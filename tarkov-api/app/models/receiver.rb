class Receiver < ApplicationRecord
    belongs_to :dealer
    has_many :weapon_receivers
    has_many :weapons, through: :weapon_receivers
end
