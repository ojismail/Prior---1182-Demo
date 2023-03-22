class RemovePatientSessionIdFromSymptoms < ActiveRecord::Migration[7.0]
  def change
    remove_reference :symptoms, :patient_session, null: false
  end
end
