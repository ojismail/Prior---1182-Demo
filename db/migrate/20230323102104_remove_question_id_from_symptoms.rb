class RemoveQuestionIdFromSymptoms < ActiveRecord::Migration[6.1]
  def change
    remove_column :symptoms, :question_id
  end
end
