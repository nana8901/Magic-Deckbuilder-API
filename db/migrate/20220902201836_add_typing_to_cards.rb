class AddTypingToCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :types, :string
  end
end
