class RemoveIntegerFromCard < ActiveRecord::Migration[7.0]
  def change
    remove_column :cards, :integer, :string
  end
end
