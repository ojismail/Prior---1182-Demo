class AddConsultationIdToQuestionAndAnswers < ActiveRecord::Migration[6.1]
  def change
    add_reference :question_and_answers, :consultation, foreign_key: true
  end
end
