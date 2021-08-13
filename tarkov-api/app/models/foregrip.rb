class Foregrip < ApplicationRecord
    belongs_to :dealer
    has_many :weapon_foregrips
    has_many :weapons, through: :weapon_foregrips
    has_many :handguard_foregrips
    has_many :handguards, through: :handguard_foregrips
    has_many :mount_handguards
    has_many :mounts, through: :mount_handguards
end
