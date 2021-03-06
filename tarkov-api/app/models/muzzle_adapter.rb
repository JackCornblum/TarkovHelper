class MuzzleAdapter < ApplicationRecord
    belongs_to :dealer
    has_many :muzzle_adapter_barrels
    has_many :barrels, through: :muzzle_adapter_barrels
    has_many :weapon_muzzle_adapters
    has_many :weapons, through: :weapon_muzzle_adapters
    has_many :muzzle_adapter_muzzles
    has_many :muzzles, through: :muzzle_adapter_muzzles
    has_many :saved_guns
end
