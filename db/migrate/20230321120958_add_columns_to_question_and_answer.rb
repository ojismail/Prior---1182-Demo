class AddColumnsToQuestionAndAnswer < ActiveRecord::Migration[7.0]
  def change
    add_reference :question_and_answers, :patient_session, null: false, foreign_key: true
    add_column :question_and_answers, :questionsandanswer_1, :string
    add_column :question_and_answers, :questionsandanswer_2, :string
    add_column :question_and_answers, :questionsandanswer_3, :string
    add_column :question_and_answers, :questionsandanswer_4, :string
    add_column :question_and_answers, :questionsandanswer_5, :string
  end
end
