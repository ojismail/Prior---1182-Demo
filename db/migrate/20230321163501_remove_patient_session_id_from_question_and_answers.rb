class RemovePatientSessionIdFromQuestionAndAnswers < ActiveRecord::Migration[7.0]
  def change
    remove_column :question_and_answers, :patient_session_id, :bigint
  end
end
