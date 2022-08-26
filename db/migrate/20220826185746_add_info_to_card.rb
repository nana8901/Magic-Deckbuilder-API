class AddInfoToCard < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :rarity, :string
    
  end
end
