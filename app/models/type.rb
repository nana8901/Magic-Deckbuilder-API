class Type < ApplicationRecord
  has_many :cardtype
  has_many :card, through: :cardtype
end
