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
    params.require(:symptom).permit(:name, :archive, :question_1, :question_2, :question_3, :question_4, :question_5)
  end

end
