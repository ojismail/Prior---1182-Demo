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

ActiveRecord::Schema[7.0].define(version: 2023_03_29_195612) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chats", force: :cascade do |t|
    t.integer "user_id"
    t.text "content"
    t.string "sender_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consultations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gpt_response"
    t.string "gpt_prompt"
    t.bigint "user_id", null: false
    t.bigint "symptom_id", null: false
    t.string "status", default: "Active"
    t.integer "rating"
    t.string "questionsandanswer_1"
    t.string "questionsandanswer_2"
    t.string "questionsandanswer_3"
    t.string "questionsandanswer_4"
    t.string "questionsandanswer_5"
    t.string "questionsandanswer_6"
    t.string "questionsandanswer_7"
    t.index ["symptom_id"], name: "index_consultations_on_symptom_id"
    t.index ["user_id"], name: "index_consultations_on_user_id"
  end

  create_table "symptoms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.boolean "archive"
    t.string "question_1"
    t.string "question_2"
    t.string "question_3"
    t.string "question_4"
    t.string "question_5"
    t.string "question_6"
    t.string "question_7"
    t.string "question_1_options", array: true
    t.string "question_2_options", array: true
    t.string "question_3_options", array: true
    t.string "question_4_options", array: true
    t.string "question_5_options", array: true
    t.string "question_6_options", array: true
    t.string "question_7_options", array: true
  end

  create_table "users", force: :cascade do |t|
    t.integer "age"
    t.string "gender"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "medical_history"
    t.string "drug_history"
    t.string "allergy_history"
    t.string "password"
    t.integer "role"
    t.string "encrypted_password"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
  end

  add_foreign_key "consultations", "symptoms"
  add_foreign_key "consultations", "users"
end
