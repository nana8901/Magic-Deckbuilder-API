class DecksController < ApplicationController
  
  def create
    deck = Deck.new(
      name: "some",
      user_id: 2,
      description: "once told me",
    )
  end
  def add_to_deck
    # Need to add in an 'if' statement to simply increase number_in_deck if the deck already has a 'cards_in_deck' object, when not hardcoding 
    add = cards_in_deck.new(
      deck_id: 1,
      card_id: 1,
      number_in_deck: 1,
    )
  end

  def update
    deck = Deck.find_by(id: params[:id])
    render json: deck

  end

  def delete
  end

  def show
    card = Card.find_by(id: params[:id])
    render json: card
  end

  def index
    @decks = Deck.all
    render json: @decks
    p current_user

  end

end
