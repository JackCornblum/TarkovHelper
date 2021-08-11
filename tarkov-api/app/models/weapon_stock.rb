class WeaponStock < ApplicationRecord
    belongs_to :weapon
    belongs_to :stock
end
