class CardsController < ApplicationController
  
  def show
    card = Card.find_by(id: params[:id])
    render json: card
  end
  def index
    @cards = Card.all
    render json: @cards
  end
  def add
    newCardsParams = {card_id: params[:card_id], deck_id: params[:deck_id], number_in_deck: params[:number_in_deck]}
    put_in = CardsInDeck.new(newCardsParams)
    put_in.save
  end
end
