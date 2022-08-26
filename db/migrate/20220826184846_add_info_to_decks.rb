class AddInfoToDecks < ActiveRecord::Migration[7.0]
  def change
    add_column :decks, :name, :string
    add_column :decks, :user_id, :integer
    add_column :decks, :description, :string

  end
end
