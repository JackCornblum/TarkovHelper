class WeaponReceiver < ApplicationRecord
    belongs_to :weapon
    belongs_to :receiver
end
