class Stock < ApplicationRecord
    belongs_to :dealer
    has_many :stock_buffer_tubes
    has_many :buffer_tubes, through: :stock_buffer_tubes
    has_many :weapon_stocks
    has_many :weapons, through: :weapon_stocks
end
