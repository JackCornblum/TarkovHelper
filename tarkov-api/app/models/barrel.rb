class Barrel < ApplicationRecord
    belongs_to :dealer
    has_many :weapon_barrels
    has_many :weapons, through: :weapon_barrels
    has_many :muzzle_adapter_barrels
    has_many :muzzle_adapters, through: :muzzle_adapter_barrels
end
