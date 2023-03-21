class DropGptTemplatesTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :gpt_templates
  end
end
