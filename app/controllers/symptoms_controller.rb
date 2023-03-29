class SymptomsController < ApplicationController
  before_action :set_symptom, only: [:show, :edit, :update, :destroy]

  def index
    @symptoms = Symptom.all
  end

  def show
  end

  def new
    @symptom = Symptom.new
  end

  def create
    @symptom = Symptom.new(symptom_params)

    if @symptom.save
      redirect_to @symptom, notice: "Symptom was successfully created."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @symptom.update(symptom_params)
      redirect_to @symptom, notice: "Symptom was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @symptom.destroy
    redirect_to symptoms_url, notice: "Symptom was successfully destroyed."
  end

  private

  def set_symptom
    @symptom = Symptom.find(params[:id])
  end

  def symptom_params
    params.require(:symptom).permit(:question_1_options, :question_2_options, :question_3_options, :question_4_options, :question_5_options, :question_6_options, :question_7_options, :name, :archive, :question_1, :question_2, :question_3, :question_4, :question_5, :question_6, :question_7, question_1_options: [], question_2_options: [], question_3_options: [], question_4_options: [],
      question_5_options: [], question_6_options: [], question_7_options: []
    )
  end

end
