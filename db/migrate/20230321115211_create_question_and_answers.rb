class CreateQuestionAndAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :question_and_answers do |t|

      t.timestamps
    end
  end
end
