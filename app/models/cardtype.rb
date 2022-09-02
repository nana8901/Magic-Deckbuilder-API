class Cardtype < ApplicationRecord
  belongs_to :card
  belongs_to :type
end
