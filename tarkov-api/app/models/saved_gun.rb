class SavedGun < ApplicationRecord
    belongs_to :user
    belongs_to :weapon
    belongs_to :barrel
    belongs_to :buffer_tube
    belongs_to :foregrip
    belongs_to :gasblock
    belongs_to :handguard
    belongs_to :mount
    belongs_to :muzzle_adapter
    belongs_to :muzzle
    belongs_to :pistol_grip
    belongs_to :receiver
    belongs_to :stock

    def parts
        weapon = self.weapon
        barrel = self.barrel
        buffer_tube = self.buffer_tube
        foregrip = self.foregrip
        gasblock = self.gasblock
        handguard = self.handguard
        mount = self.mount
        muzzle_adapter = self.muzzle_adapter
        muzzle = self.muzzle
        pistol_grip = self.pistol_grip
        receiver = self.receiver
        stock = self.stock
    end

end
