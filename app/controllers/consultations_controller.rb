class ConsultationController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def index
    @consultations = Consultation.all
  end

  def show
    @consultation = Consultation.find(params[:id])
  end

  def new
    @consultation = Consultation.new
  end

  def create
    @consultation = Consultation.new(consultation_params)

    if @consultation.save
      redirect_to edit_consultation_path(@consultation), notice: 'Consultation was successfully created.'
    else
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

  def create_prompt
    # Code to create prompts and send them to GPT via API goes here
  end

  private

  def consultation_params
    params.require(:consultation).permit(:doctor_id, :email, :name, :age, :gender, :symptoms, :history)
  end
end
