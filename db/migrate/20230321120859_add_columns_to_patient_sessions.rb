class AddColumnsToPatientSessions < ActiveRecord::Migration[7.0]
  def change
    add_reference :patient_sessions, :doctor, null: false, foreign_key: true
    add_column :patient_sessions, :email, :string
    add_column :patient_sessions, :gpt_response, :string
    add_column :patient_sessions, :gpt_prompt, :string
  end
end
