class AddQuestionOptionsToSymptoms < ActiveRecord::Migration[6.1]
  def change
    add_column :symptoms, :question_1_options, :string, array: true
    add_column :symptoms, :question_2_options, :string, array: true
    add_column :symptoms, :question_3_options, :string, array: true
    add_column :symptoms, :question_4_options, :string, array: true
    add_column :symptoms, :question_5_options, :string, array: true
    add_column :symptoms, :question_6_options, :string, array: true
    add_column :symptoms, :question_7_options, :string, array: true
  end
end
