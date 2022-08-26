class AddExpansionToCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :integer, :string
  end
end
