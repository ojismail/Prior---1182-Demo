class AddRatingToConsultations < ActiveRecord::Migration[7.0]
  def change
    add_column :consultations, :rating, :integer
  end
end
