class RemoveDoctorStatusFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :doctor_status, :boolean
  end
end
