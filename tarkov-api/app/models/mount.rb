class Mount < ApplicationRecord
    belongs_to :dealer
    has_many :mount_weapons
    has_many :weapons, through: :mount_weapons
    has_many :mount_handguards
    has_many :handguards, through: :mount_handguards
    has_many :mount_foregrips
    has_many :foregrips, through: :mount_foregrips
end
