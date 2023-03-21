class RemoveEmailFromConsultations < ActiveRecord::Migration[7.0]
  def change
    remove_column :consultations, :email, :string
  end
end
