class CreatePatientSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :patient_sessions do |t|

      t.timestamps
    end
  end
end
