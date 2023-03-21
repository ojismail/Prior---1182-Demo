class CreateSicknesses < ActiveRecord::Migration[7.0]
  def change
    create_table :sicknesses do |t|

      t.timestamps
    end
  end
end
