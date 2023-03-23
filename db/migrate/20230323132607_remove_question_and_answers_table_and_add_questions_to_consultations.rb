class RemoveQuestionAndAnswersTableAndAddQuestionsToConsultations < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :consultations, :question_and_answers
    drop_table :question_and_answers

    add_column :consultations, :questionsandanswer_1, :string
    add_column :consultations, :questionsandanswer_2, :string
    add_column :consultations, :questionsandanswer_3, :string
    add_column :consultations, :questionsandanswer_4, :string
    add_column :consultations, :questionsandanswer_5, :string
  end
end
