class AddGenderToPatientSessions < ActiveRecord::Migration[7.0]
  def change
    add_column :patient_sessions, :gender, :string
  end
end
