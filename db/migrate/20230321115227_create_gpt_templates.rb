class CreateGptTemplates < ActiveRecord::Migration[7.0]
  def change
    create_table :gpt_templates do |t|

      t.timestamps
    end
  end
end
