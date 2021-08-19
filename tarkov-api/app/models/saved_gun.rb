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

        parts = []
        
        if barrel.name == "Nil"
        else
            parts << barrel
        end
        if buffer_tube.name == "Nil"
        else
            parts << buffer_tube
        end
        if foregrip.name == "Nil"
        else
            parts << foregrip
        end
        if gasblock.name == "Nil"
        else
            parts << gasblock
        end
        if handguard.name == "Nil"
        else
            parts << handguard
        end
        if mount.name == "Nil"
        else
            parts << mount
        end
        if muzzle_adapter.name == "Nil"
        else
            parts << muzzle_adapter
        end
        if muzzle.name == "Nil"
        else
            parts << muzzle
        end
        if pistol_grip.name == "Nil"
        else
            parts << pistol_grip
        end
        if receiver.name == "Nil"
        else
            parts << receiver
        end
        if stock.name == "Nil"
        else
            parts << stock
        end
        

        gun_build = {id: self.id, gun: weapon, parts: parts}
        gun_build
    end

end
