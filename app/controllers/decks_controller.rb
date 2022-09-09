class DecksController < ApplicationController
  
  def create
    deck = Deck.new(
      name: "some"


    )
  end

  def update
  end

  def delete
  end

  def show
  end

  def index
    @decks = Deck.
  end

end
