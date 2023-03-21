class RemoveDoctorIdFromPatientSessions < ActiveRecord::Migration[7.0]
  def change
    remove_column :patient_sessions, :doctor_id, :bigint
  end
end
