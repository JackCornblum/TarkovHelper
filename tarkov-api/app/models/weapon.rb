class Weapon < ApplicationRecord
    has_many :weapon_foregrips
    has_many :foregrips, through: :weapon_foregrips
    has_many :weapon_barrels
    has_many :barrels, through: :weapon_barrels
    has_many :weapon_pistol_grips
    has_many :pistol_grips, through: :weapon_pistol_grips
    has_many :weapon_buffer_tubes
    has_many :buffer_tubes, through: :weapon_buffer_tubes
    has_many :weapon_stocks
    has_many :stocks, through: :weapon_stocks
    has_many :weapon_muzzle_adapters
    has_many :muzzle_adapters, through: :weapon_muzzle_adapters
    has_many :weapon_charging_handles
    has_many :charging_handles, through: :weapon_charging_handles
    has_many :weapon_muzzles
    has_many :muzzles, through: :weapon_muzzles
    has_many :weapon_receivers
    has_many :receivers, through: :weapon_receivers
    has_many :weapon_handguards
    has_many :handguards, through: :weapon_handguards

    def best_pistol_grip
        if self.pistol_grips.count > 0
            grips = self.pistol_grips
            best_grip = grips.max_by{|g| g[:ergonomics]}
            best_grip
        else
            "No pistol Grips"
        end
        # byebug
    end

    def best_receiver_recoil
        if self.receivers.count > 0
            receivers = self.receivers
            # best_receiver = receivers.max_by{|receiver| receiver[:recoil]}
            recoils = receivers.map{|r| r[:recoil]}
            max = recoils.max()
            best_receivers = receivers.select{|r| r[:recoil] == max}
            best_receiver = best_receivers.max_by{|r| r[:ergonomics]}
            best_receiver
        else
            "No receivers"
        end
        # byebug
    end

    def best_handguard_recoil
        if self.handguards.count > 0
            handguards = self.handguards
            best_handguard = handguards.max_by{|handguard| handguard[:recoil]}
            best_handguard
            
        else
            if self.receivers.count > 0
                receivers = self.receivers

                best_receiver = receivers.max_by{|receiver| receiver[:recoil]}
                handguards = best_receiver.handguards
                if handguards.length > 0
                    recoils = handguards.map{|h| h[:recoil]}
                    max = recoils.max()
                    best_guards = handguards.select{|h| h[:recoil] == max}
                    best_handguard = best_guards.max_by{|g| g[:ergonomics]}
                    best_handguard
                else
                    "No handguards"
                end
            else
                "No handguards"
            end
            
        end
    end


end
