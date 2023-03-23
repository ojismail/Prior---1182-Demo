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
end
