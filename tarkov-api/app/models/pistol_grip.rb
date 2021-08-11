class PistolGrip < ApplicationRecord
    belongs_to :dealer
    has_many :weapon_pistol_grips
    has_many :weapons, through: :weapon_pistol_grips
end
