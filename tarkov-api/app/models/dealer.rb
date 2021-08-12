class Dealer < ApplicationRecord
    has_many :foregrips
    has_many :barrels
    has_many :pistol_grips
    has_many :stocks
    has_many :buffer_tubes
    has_many :muzzles
    has_many :charging_handles
    has_many :muzzle_adapters
    has_many :receivers
    has_many :gasblocks
    has_many :handguards
end
