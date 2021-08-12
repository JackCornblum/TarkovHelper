class Gasblock < ApplicationRecord
    belongs_to :dealer
    has_many :barrel_gasblocks
    has_many :barrels, through: :barrel_gasblocks
end
