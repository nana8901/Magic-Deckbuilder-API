class CardsController < ApplicationController
  def add_to_deck
  end
  def show
  end
  def index
    @cards = Card.all
    render json: @cards
  end
end
