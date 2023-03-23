class RemoveQuestionsAndAddFieldsToSymptoms < ActiveRecord::Migration[6.1]
  def up
    remove_foreign_key :symptoms, :questions
    drop_table :questions
    add_column :symptoms, :question_1, :string
    add_column :symptoms, :question_2, :string
    add_column :symptoms, :question_3, :string
    add_column :symptoms, :question_4, :string
    add_column :symptoms, :question_5, :string
  end

  def down
    create_table "questions", force: :cascade do |t|
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "question_1"
      t.string "question_2"
      t.string "question_3"
      t.string "question_4"
      t.string "question_5"
    end

    remove_column :symptoms, :question_1, :string
    remove_column :symptoms, :question_2, :string
    remove_column :symptoms, :question_3, :string
    remove_column :symptoms, :question_4, :string
    remove_column :symptoms, :question_5, :string
  end
end
