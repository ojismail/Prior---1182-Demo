class RenameSicknessesToSymptoms < ActiveRecord::Migration[7.0]
  def change
    rename_table :sicknesses, :symptoms
  end
end
