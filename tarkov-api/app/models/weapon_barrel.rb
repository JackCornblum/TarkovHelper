class WeaponBarrel < ApplicationRecord
    belongs_to :barrel
    belongs_to :weapon
end
