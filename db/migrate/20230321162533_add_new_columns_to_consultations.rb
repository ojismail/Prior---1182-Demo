class AddNewColumnsToConsultations < ActiveRecord::Migration[7.0]
  def change
    add_reference :consultations, :patient, null: false, foreign_key: true
    add_reference :consultations, :symptom, null: false, foreign_key: true
    add_reference :consultations, :question_and_answer, null: false, foreign_key: true
  end
end
