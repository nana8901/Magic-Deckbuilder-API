class Supertype < ApplicationRecord
  has_many :cardsupertype
  has_many :card, through: :cardsupertype
  validates :name, presence: true, uniqueness: true
end
