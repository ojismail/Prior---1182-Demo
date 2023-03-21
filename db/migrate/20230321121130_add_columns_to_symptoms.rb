class AddColumnsToSymptoms < ActiveRecord::Migration[7.0]
  def change
    add_reference :symptoms, :patient_session, null: false, foreign_key: true
    add_column :symptoms, :name, :string
    add_column :symptoms, :archive, :boolean
  end
end
