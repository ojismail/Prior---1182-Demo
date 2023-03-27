class AddQuestionsToSymptoms < ActiveRecord::Migration[7.0]
  def change
    add_column :symptoms, :question_6, :string
    add_column :symptoms, :question_7, :string
  end
end
