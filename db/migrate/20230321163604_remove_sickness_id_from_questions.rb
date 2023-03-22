class RemoveSicknessIdFromQuestions < ActiveRecord::Migration[7.0]
  def change
    remove_column :questions, :sickness_id, :integer
  end
end
