class Receiver < ApplicationRecord
    belongs_to :dealer
    has_many :weapon_receivers
    has_many :weapons, through: :weapon_receivers
    has_many :handguard_receivers
    has_many :handguards, through: :handguard_receivers
    has_many :barrel_receivers
    has_many :barrels, through: :barrel_receivers
    has_many :saved_guns
end
