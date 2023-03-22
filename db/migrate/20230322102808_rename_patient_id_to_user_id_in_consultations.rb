class RenamePatientIdToUserIdInConsultations < ActiveRecord::Migration[6.1]
  def change
    rename_column :consultations, :patient_id, :user_id
  end
end
