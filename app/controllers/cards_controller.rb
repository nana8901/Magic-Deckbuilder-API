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
    if CardsInDeck.find_by(card_id: newCardsParams[:card_id], deck_id: params[:deck_id]) == nil &&  params[:number_in_deck] != 0
      put_in = CardsInDeck.new(newCardsParams)
      put_in.save
    elsif CardsInDeck.find_by(card_id: newCardsParams[:card_id], deck_id: params[:deck_id]) != nil
      change = CardsInDeck.find_by(card_id: newCardsParams[:card_id], deck_id: params[:deck_id])
      change.number_in_deck = params[:number_in_deck]
      if change[:number_in_deck] == 0
        change.destroy
      else
        change.save
      end
    end
  end
end
