class Weapon < ApplicationRecord
    has_many :weapon_foregrips
    has_many :foregrips, through: :weapon_foregrips
    has_many :weapon_barrels
    has_many :barrels, through: :weapon_barrels
    has_many :weapon_pistol_grips
    has_many :pistol_grips, through: :weapon_pistol_grips
    has_many :weapon_buffer_tubes
    has_many :buffer_tubes, through: :weapon_buffer_tubes
    has_many :weapon_stocks
    has_many :stocks, through: :weapon_stocks
    has_many :weapon_muzzle_adapters
    has_many :muzzle_adapters, through: :weapon_muzzle_adapters
    has_many :weapon_charging_handles
    has_many :charging_handles, through: :weapon_charging_handles
    has_many :weapon_muzzles
    has_many :muzzles, through: :weapon_muzzles
    has_many :weapon_receivers
    has_many :receivers, through: :weapon_receivers
    has_many :weapon_handguards
    has_many :handguards, through: :weapon_handguards
end
