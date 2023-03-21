class AddColumnsToSicknesses < ActiveRecord::Migration[7.0]
  def change
    add_reference :sicknesses, :patient_session, null: false, foreign_key: true
    add_column :sicknesses, :name, :string
    add_column :sicknesses, :archive, :boolean
  end
end
