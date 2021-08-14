class Dealer < ApplicationRecord
    has_many :foregrips
    has_many :barrels
    has_many :pistol_grips
    has_many :stocks
    has_many :buffer_tubes
    has_many :muzzles
    has_many :charging_handles
    has_many :muzzle_adapters
    has_many :receivers
    has_many :gasblocks
    has_many :handguards
    has_many :mounts

    def all_items
        items = []
        foregrips = self.foregrips
        barrels = self.barrels
        pistol_grips = self.pistol_grips
        stocks = self.stocks
        buffer_tubes = self.buffer_tubes
        muzzles = self.muzzles
        charging_handles = self.charging_handles
        muzzle_adapters = self.muzzle_adapters
        receivers = self.receivers
        gasblocks = self.gasblocks
        handguards = self.handguards
        mounts = self.mounts
        items << foregrips
        items << barrels
        items << pistol_grips
        items << stocks
        items << buffer_tubes
        items << muzzles
        items << charging_handles
        items << muzzle_adapters
        items << receivers
        items << gasblocks
        items << handguards
        items << mounts
        items
    end
end
