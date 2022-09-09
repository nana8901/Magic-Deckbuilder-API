class CardsController < ApplicationController
  
  def show
    card = Card.find_by(id: params[:id])
    render json: card
  end
  def index
    @cards = Card.all
    render json: @cards
  end
end
