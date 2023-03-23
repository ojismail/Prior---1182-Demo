class RemoveQuestionAndAnswerIdFromConsultations < ActiveRecord::Migration[6.1]
  def change
    remove_column :consultations, :question_and_answer_id, :bigint
  end
end
