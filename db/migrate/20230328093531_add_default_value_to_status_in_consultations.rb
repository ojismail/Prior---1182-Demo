class AddDefaultValueToStatusInConsultations < ActiveRecord::Migration[6.1]
  def change
    change_column_default :consultations, :status, 'Active'
  end
end
