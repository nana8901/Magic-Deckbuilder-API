class Deck < ApplicationRecord
  belongs_to :user
  has_many :cards_in_deck
  has_many :card, through: :cards_in_deck
end
