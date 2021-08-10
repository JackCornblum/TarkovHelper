class Foregrip < ApplicationRecord
    belongs_to :dealer
    has_many :weapon_foregrips
    has_many :weapons, through: :weapon_foregrips
end
