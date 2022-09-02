class ChangeCmcToInteger < ActiveRecord::Migration[7.0]
  def change
    remove_column :cards, :cmc, :string
  end
end
