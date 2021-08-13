class Barrel < ApplicationRecord
    belongs_to :dealer
    has_many :weapon_barrels
    has_many :weapons, through: :weapon_barrels
    has_many :muzzle_adapter_barrels
    has_many :muzzle_adapters, through: :muzzle_adapter_barrels
    has_many :muzzle_barrels
    has_many :muzzles, through: :muzzle_barrels
    has_many :barrel_gasblocks
    has_many :gasblocks, through: :barrel_gasblocks
    has_many :barrel_receivers
    has_many :receivers, through: :barrel_receivers
end
