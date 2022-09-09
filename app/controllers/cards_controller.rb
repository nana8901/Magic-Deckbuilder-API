class CardsController < ApplicationController
  def add_to_deck
    add = cards_in_deck.new(
      deck_id: 1,
      card_id: 1,
      number_in_deck: 1,
    )
  end
  def show
    card = Card.find_by(id: 1)
    render json: card
  end
  def index
    @cards = Card.all
    render json: @cards
  end
end
