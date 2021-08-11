class BufferTube < ApplicationRecord
    belongs_to :dealer
    has_many :weapon_buffer_tubes
    has_many :weapons, through: :weapon_buffer_tubes
end
