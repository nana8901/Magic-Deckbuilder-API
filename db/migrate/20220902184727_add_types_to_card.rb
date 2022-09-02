class AddTypesToCard < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :cmc, :integer
  end
end
