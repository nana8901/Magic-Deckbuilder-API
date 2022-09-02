class AddCostsToCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :cost, :string
    add_column :cards, :cmc, :string
  end
end
