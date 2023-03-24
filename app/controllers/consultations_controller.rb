class ConsultationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]
  # before_action :require_patient, only: [:index, :new, :show, :edit, :update]
  # before_action :require_doctor, only: [:index, :edit, :update, :destroy]

  def index
    @consultations = Consultation.all
  end

  def show
    @consultation = Consultation.find(params[:id])
  end

  def new
    @consultation = Consultation.new
    @symptoms = Symptom.all
  end

  def create
    @consultation = current_user.consultations.build(consultation_params)



    if @consultation.save
      generate_gpt_prompt_and_response(@consultation)
      redirect_to consultations_path, notice: 'Consultation was successfully created.'
    else
      @symptoms = Symptom.all
      puts @consultation.errors.full_messages
      render :new
    end
  end

  def edit
    @consultation = Consultation.find(params[:id])
  end

  def update
    @consultation = Consultation.find(params[:id])

    if @consultation.update(consultation_params)
      redirect_to consultation_path(@consultation), notice: 'Consultation was successfully updated.'
    else
      render :edit
    end
  end

  def close
    @consultation = Consultation.find(params[:id])
    @consultation.closed = true
    @consultation.save
    redirect_to consultations_path, notice: 'Consultation was successfully closed.'
  end


  def destroy
    @consultation = Consultation.find(params[:id])
    @consultation.destroy
    redirect_to consultation_url, notice: "Consultation was successfully destroyed."
  end

  def create_prompt
    # Code to create prompts and send them to GPT via API goes here
  end

  private

  def consultation_params
    params.require(:consultation).permit(:email, :status, :name, :age, :gender, :symptom_id, :questionsandanswer_1, :questionsandanswer_2, :questionsandanswer_3, :questionsandanswer_4, :questionsandanswer_5)
  end

  def generate_gpt_prompt_and_response(consultation)
    # Generate the prompt based on the consultation data and additional instructions
    prompt = <<-PROMPT
    I'm going to give you a list of questions and answers a patient has provided me.
    Please provide a clinical summary of the information provided that is suitable to be entered into the patient notes.
    Please also provide me with a list of 5 differentials for the symptoms bearing in mind the patient's background.
    Please also provide me with a related management plan.
    Consultation ID: #{consultation.id}
    Symptom: #{consultation.symptom_id}
    Questions and Answers:
    #{consultation.questionsandanswer_1}
    #{consultation.questionsandanswer_2}
    #{consultation.questionsandanswer_3}
    #{consultation.questionsandanswer_4}
    #{consultation.questionsandanswer_5}
    PROMPT
    # Send the prompt to the GPT-3 API
    response = send_gpt_request(prompt)

    # Update the consultation record with the GPT response
    consultation.update(gpt_prompt: prompt, gpt_response: response)
  end

  def send_gpt_request(prompt)
    client = OpenAI::Client.new
        response = client.completions(
        parameters: {
        model: "text-davinci-003",
        prompt: prompt,
        max_tokens: 300
        })

    # Extract the response content
    response['choices'][0]['text'].strip
  end
end
