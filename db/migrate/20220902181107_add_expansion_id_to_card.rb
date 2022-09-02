class AddExpansionIdToCard < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :expansion_id, :integer
  end
end
