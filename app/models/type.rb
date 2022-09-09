class Type < ApplicationRecord
  has_many :cardtype
  has_many :card, through: :cardtype
  validates :name, presence: true, uniqueness: true
end
