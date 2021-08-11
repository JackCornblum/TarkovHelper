class Dealer < ApplicationRecord
    has_many :foregrips
    has_many :barrels
    has_many :pistol_grips
    has_many :stocks
    has_many :buffer_tubes
end
