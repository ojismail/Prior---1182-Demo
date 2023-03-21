class PatientSessionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def index
    @patient_sessions = PatientSession.all
  end

  def show
    @patient_session = PatientSession.find(params[:id])
  end

  def new
    @patient_session = PatientSession.new
  end

  def create
    @patient_session = PatientSession.new(patient_session_params)

    if @patient_session.save
      redirect_to edit_patient_session_path(@patient_session), notice: 'Patient session was successfully created.'
    else
      render :new
    end
  end

  def edit
    @patient_session = PatientSession.find(params[:id])
  end

  def update
    @patient_session = PatientSession.find(params[:id])

    if @patient_session.update(patient_session_params)
      redirect_to patient_session_path(@patient_session), notice: 'Patient session was successfully updated.'
    else
      render :edit
    end
  end

  def close
    @patient_session = PatientSession.find(params[:id])
    @patient_session.closed = true
    @patient_session.save
    redirect_to patient_sessions_path, notice: 'Patient session was successfully closed.'
  end

  def create_prompt
    # Code to create prompts and send them to GPT via API goes here
  end

  private

  def patient_session_params
    params.require(:patient_session).permit(:doctor_id, :email, :name, :age, :gender, :symptoms, :history)
  end
end
