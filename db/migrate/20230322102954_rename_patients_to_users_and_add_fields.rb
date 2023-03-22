class RenamePatientsToUsersAndAddFields < ActiveRecord::Migration[6.1]
  def change
    rename_table :patients, :users
    add_column :users, :password, :string
    add_column :users, :doctor_status, :boolean, default: false
  end
end
