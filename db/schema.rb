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

ActiveRecord::Schema[7.0].define(version: 2023_03_21_132827) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "doctors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patient_sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "doctor_id", null: false
    t.string "email"
    t.string "gpt_response"
    t.string "gpt_prompt"
    t.index ["doctor_id"], name: "index_patient_sessions_on_doctor_id"
  end

  create_table "question_and_answers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "patient_session_id", null: false
    t.string "questionsandanswer_1"
    t.string "questionsandanswer_2"
    t.string "questionsandanswer_3"
    t.string "questionsandanswer_4"
    t.string "questionsandanswer_5"
    t.index ["patient_session_id"], name: "index_question_and_answers_on_patient_session_id"
  end

  create_table "questions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sickness_id"
    t.string "question_1"
    t.string "question_2"
    t.string "question_3"
    t.string "question_4"
    t.string "question_5"
  end

  create_table "sicknesses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "patient_session_id", null: false
    t.string "name"
    t.boolean "archive"
    t.index ["patient_session_id"], name: "index_sicknesses_on_patient_session_id"
  end

  add_foreign_key "patient_sessions", "doctors"
  add_foreign_key "question_and_answers", "patient_sessions"
  add_foreign_key "sicknesses", "patient_sessions"
end
