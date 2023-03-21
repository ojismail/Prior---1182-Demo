class AddQuestionIdToSymptoms < ActiveRecord::Migration[7.0]
  def change
    add_reference :symptoms, :question, null: false, foreign_key: true
  end
end
