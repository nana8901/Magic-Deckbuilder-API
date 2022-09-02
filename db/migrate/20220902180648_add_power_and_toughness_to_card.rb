class AddPowerAndToughnessToCard < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :power, :integer
    add_column :cards, :toughness, :integer
  end
end
