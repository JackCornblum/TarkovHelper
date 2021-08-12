class Muzzle < ApplicationRecord
    belongs_to :dealer
    has_many :weapon_muzzles
    has_many :weapons, through: :weapon_muzzles
    has_many :muzzle_barrels
    has_many :barrels, through: :muzzle_barrels
end
