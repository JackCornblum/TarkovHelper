class Weapon < ApplicationRecord
    has_many :weapon_foregrips
    has_many :foregrips, through: :weapon_foregrips
    has_many :weapon_barrels
    has_many :barrels, through: :weapon_barrels
    has_many :weapon_pistol_grips
    has_many :pistol_grips, through: :weapon_pistol_grips
    has_many :weapon_buffer_tubes
    has_many :buffer_tubes, through: :weapon_buffer_tubes
end