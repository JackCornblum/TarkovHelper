class Barrel < ApplicationRecord
    belongs_to :dealer
    has_many :weapon_barrels
    has_many :weapons, through: :weapon_barrels
end
