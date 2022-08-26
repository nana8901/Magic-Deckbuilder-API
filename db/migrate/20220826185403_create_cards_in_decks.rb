class CreateCardsInDecks < ActiveRecord::Migration[7.0]
  def change
    create_table :cards_in_decks do |t|
      t.integer :deck_id
      t.integer :card_id
      t.integer :number_in_deck

      t.timestamps
    end
  end
end
