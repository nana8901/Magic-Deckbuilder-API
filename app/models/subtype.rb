class Subtype < ApplicationRecord
  has_many :cardsubtypes
  has_many :card, through: :cardsubtypes
end
