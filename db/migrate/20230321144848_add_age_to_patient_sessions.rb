class AddAgeToPatientSessions < ActiveRecord::Migration[7.0]
  def change
    add_column :patient_sessions, :age, :integer
  end
end
