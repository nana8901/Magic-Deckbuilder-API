class DecksController < ApplicationController
  
  def create
    deck = Deck.new(
      name: params[:name],
      user_id: current_user.id,
      description: "",
    )
    deck.save
  end

  def update
    deck = Deck.find_by(id: params[:id])
    deck.name = params[:name] || deck.name
    deck.description = params[:description] || deck.description
    deck.save
    render json: deck
  end

  def delete
    deck = Deck.find_by(id: params[:id])
    deck.destroy
  end

  def show
    @deck = Deck.find_by(id: params[:id])
    @numCards = @deck.cards_in_deck
    @cards = @deck.card
    render template: "decks/show"
  end

  def index
    @decks = Deck.where(user_id: current_user.id)
    render json: @decks
    p current_user
  end

end
