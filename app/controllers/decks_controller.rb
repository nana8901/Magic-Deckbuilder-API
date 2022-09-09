class DecksController < ApplicationController
  
  def create
    deck = Deck.new(
      name: "some",
      user_id: 2,
      description: "once told me",
    )
  end

  def update
    deck = Deck.find_by(id: params[:id])

  end

  def delete
  end

  def show
  end

  def index
    @decks = Deck.all
    render json: @decks
    p current_user

  end

end
