class Subtype < ApplicationRecord
  has_many :cardsubtypes
  has_many :card, through: :cardsubtypes
  validates :name, presence: true, uniqueness: true
end
