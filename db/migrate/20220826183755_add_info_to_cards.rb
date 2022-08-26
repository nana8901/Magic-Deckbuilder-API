class AddInfoToCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :name, :string
    add_column :cards, :rules_text, :string
  end
end
