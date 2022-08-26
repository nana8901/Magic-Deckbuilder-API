class Card < ApplicationRecord
  has_many :cards_in_deck
  has_many :deck, through: :cards_in_deck
  has_many :cardsubtype
  has_many :subtype, through: :cardsubtype
  has_many :cardtype
  has_many :type, through: :cardtype
end
