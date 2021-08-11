class ChargingHandle < ApplicationRecord
    belongs_to :dealer
    has_many :weapon_charging_handles
    has_many :weapons, through: :weapon_charging_handles
end
