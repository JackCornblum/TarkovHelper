class Weapon < ApplicationRecord
    has_many :weapon_foregrips
    has_many :foregrips, through: :weapon_foregrips
end
