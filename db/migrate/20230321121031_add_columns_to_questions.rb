class AddColumnsToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :sickness_id, :integer
    add_column :questions, :question_1, :string
    add_column :questions, :question_2, :string
    add_column :questions, :question_3, :string
    add_column :questions, :question_4, :string
    add_column :questions, :question_5, :string
  end
end
