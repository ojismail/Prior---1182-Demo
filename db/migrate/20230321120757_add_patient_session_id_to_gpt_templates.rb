class AddPatientSessionIdToGptTemplates < ActiveRecord::Migration[7.0]
  def change
    add_column :gpt_templates, :patient_session_id, :integer
    add_index :gpt_templates, :patient_session_id
  end
end
