class Handguard < ApplicationRecord
    belongs_to :dealer
    has_many :weapon_handguards
    has_many :weapons, through: :weapon_handguards
    has_many :handguard_receivers
    has_many :receivers, through: :handguard_receivers
end
