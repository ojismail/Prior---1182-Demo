class RenamePatientSessionsToConsultations < ActiveRecord::Migration[7.0]
  def change
    rename_table :patient_sessions, :consultations
  end
end
