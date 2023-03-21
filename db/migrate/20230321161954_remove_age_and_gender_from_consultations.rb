class RemoveAgeAndGenderFromConsultations < ActiveRecord::Migration[7.0]
  def change
    remove_column :consultations, :age, :integer
    remove_column :consultations, :gender, :string
  end
end
