class AddMoreQuestionsToConsultations < ActiveRecord::Migration[7.0]
  def change
    add_column :consultations, :questionsandanswer_6, :string
    add_column :consultations, :questionsandanswer_7, :string
  end
end
