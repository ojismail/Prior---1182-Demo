class ConsultationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]
  # before_action :require_patient, only: [:index, :new, :show, :edit, :update]
  # before_action :require_doctor, only: [:index, :edit, :update, :destroy]

  def index
    @consultations = Consultation.all
    @consultations_user = current_user.consultations
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
    @consultation.status = 'Closed'
    @consultation.save
    redirect_to consultations_path, notice: 'Consultation was successfully closed.'
  end


  def destroy
    @consultation = Consultation.find(params[:id])
    @consultation.destroy
    redirect_to consultations_path, notice: "Consultation was successfully deleted."
  end

  def create_prompt
    # Code to create prompts and send them to GPT via API goes here
  end

  private

  def consultation_params
    params.require(:consultation).permit(:gpt_prompt, :gpt_response, :email, :status, :name, :age, :gender, :symptom_id, :questionsandanswer_1, :questionsandanswer_2, :questionsandanswer_3, :questionsandanswer_4, :questionsandanswer_5, :questionsandanswer_6, :questionsandanswer_7)
  end

  def generate_gpt_prompt_and_response(consultation)
    # Generate the prompt based on the consultation data and additional instructions
    prompt = <<-PROMPT
    I'm going to give you a list of questions and answers a patient has provided me alongside some background information.
    Pretend you are a doctor and provide:
    1. Clinical Summary: A three sentence clinical summary of their symptoms (make sure to include patient's age and gender).
    2. Differential Diagnoses: 5 differentials for the symptoms bearing in mind the patient's background.
    3. Management Plan: 5 investigation or management actions based on the differentials.
    4. Learning Point: A medical learning point about the case. Make it complex.
    Presenting Complaint: #{consultation.symptom_id}
    Age: #{consultation.user.age}
    Gender: #{consultation.user.gender}
    Past Medical History: #{consultation.user.medical_history}
    Drug History: #{consultation.user.drug_history}
    Questions and Answers:
    #{consultation.questionsandanswer_1}
    #{consultation.questionsandanswer_2}
    #{consultation.questionsandanswer_3}
    #{consultation.questionsandanswer_4}
    #{consultation.questionsandanswer_5}
    #{consultation.questionsandanswer_6}
    #{consultation.questionsandanswer_7}
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
        max_tokens: 400
        })


    # Extract the response content
    response['choices'][0]['text'].strip
  end
end
