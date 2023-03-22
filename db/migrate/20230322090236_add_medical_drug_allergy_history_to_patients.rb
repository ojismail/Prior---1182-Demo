class AddMedicalDrugAllergyHistoryToPatients < ActiveRecord::Migration[7.0]
  def change
    add_column :patients, :medical_history, :string
    add_column :patients, :drug_history, :string
    add_column :patients, :allergy_history, :string
  end
end
