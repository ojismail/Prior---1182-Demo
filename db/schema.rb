# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_21_164257) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consultations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gpt_response"
    t.string "gpt_prompt"
    t.bigint "patient_id", null: false
    t.bigint "symptom_id", null: false
    t.bigint "question_and_answer_id", null: false
    t.string "status"
    t.index ["patient_id"], name: "index_consultations_on_patient_id"
    t.index ["question_and_answer_id"], name: "index_consultations_on_question_and_answer_id"
    t.index ["symptom_id"], name: "index_consultations_on_symptom_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.integer "age"
    t.string "gender"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_and_answers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "questionsandanswer_1"
    t.string "questionsandanswer_2"
    t.string "questionsandanswer_3"
    t.string "questionsandanswer_4"
    t.string "questionsandanswer_5"
  end

  create_table "questions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "question_1"
    t.string "question_2"
    t.string "question_3"
    t.string "question_4"
    t.string "question_5"
  end

  create_table "symptoms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.boolean "archive"
    t.bigint "question_id", null: false
    t.index ["question_id"], name: "index_symptoms_on_question_id"
  end

  add_foreign_key "consultations", "patients"
  add_foreign_key "consultations", "question_and_answers"
  add_foreign_key "consultations", "symptoms"
  add_foreign_key "symptoms", "questions"
end
