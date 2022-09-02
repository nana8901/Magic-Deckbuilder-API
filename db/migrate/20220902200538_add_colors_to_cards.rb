class AddColorsToCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :colors, :string
  end
end
