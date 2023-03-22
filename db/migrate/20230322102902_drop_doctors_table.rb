class DropDoctorsTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :doctors
  end
end
