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
    has_many :mount_weapons
    has_many :mounts, through: :mount_weapons
    has_many :saved_guns

    def all_items
        items = []
        foregrips = self.foregrips
        barrels = self.receivers.map{|r| r.barrels}
        pistol_grips = self.pistol_grips
        buffer_tubes = self.buffer_tubes
        stocks = self.stocks
        muzzle_adapters = self.muzzle_adapters
        muzzles = self.muzzles
        receivers = self.receivers
        handguards = self.handguards
        mounts = self.mounts
        items << foregrips
        items << barrels
        items << pistol_grips
        items << buffer_tubes
        items << stocks
        items << muzzle_adapters
        items << muzzles
        items << receivers
        items << handguards
        items << mounts
        more_handguards = receivers.map{|b| b.handguards}
        more_foregrips = mounts.map{|m| m.foregrips}
        items << more_handguards
        items << more_foregrips
        items
    end

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

    def best_barrel_recoil
        if self.barrels.count > 0
            barrels = self.barrels
            recoils = barrels.map{|b| b[:recoil]}
            max = recoils.max()
            best_barrels = barrels.select{|b| b[:recoil] == max}
            best_barrel = best_barrels.max_by{|b| b[:ergonomics]}
            best_barrel
            
        else
            receiver = self.best_receiver_recoil
            
            if receiver != "No receivers"
                if receiver.barrels.count > 0
                    barrels = receiver.barrels
                    recoils = barrels.map{|b| b[:recoil]}
                    max = recoils.max()
                    best_barrels = barrels.select{|b| b[:recoil] == max}
                    best_barrel = best_barrels.max_by{|b| b[:ergonomics]}
                    best_barrel
                else
                    "No barrels"
                end
            else
                "No barrels"
            end
            
        end
    end

    def best_foregrip_recoil
        if self.best_handguard_recoil == "No handguards"
            if self.mounts.count > 0
                mount = self.mounts.max_by {|m| m[:ergonomics]}
                foregrips = mount.foregrips
                recoils = foregrips.map{|f| f[:recoil]}
                max = recoils.max()
                best_foregrips = foregrips.select{|f| f[:recoil] == max}
                best_foregrip = best_foregrips.max_by{|f| f[:ergonomics]}
                [best_foregrip, mount]
            else
                "No foregrips"
            end
            
        else
            handguard = self.best_handguard_recoil
            if handguard.mounts.count > 0
                mount = handguard.mounts.max_by{|m| m[:ergonomics]}
                foregrips = mount.foregrips
                recoils = foregrips.map{|f| f[:recoil]}
                max = recoils.max()
                best_foregrips = foregrips.select{|f| f[:recoil] == max}
                best_foregrip = best_foregrips.max_by{|f| f[:ergonomics]}
                [best_foregrip, mount]
            else
                "No foregrips"
            end
            
        end
    end

    def best_stock_recoil
        recoil = 0
        recoil2 = 0
        if self.buffer_tubes.count > 0 
            if self.stocks.count > 0
                stocks2 = self.stocks
                recoils2 = stocks2.map{|s| s[:recoil]}
                max2 = recoils2.max()
                best_stocks2 = stocks2.select{|s| s[:recoil] == max2}
                best_stock2 = best_stocks2.max_by{|s| s[:ergonomics]}
                recoil2 += best_stock2[:recoil]

                buffer_tubes = self.buffer_tubes
                recoils = buffer_tubes.map{|t| t[:recoil]}
                max = recoils.max()
                best_tubes = buffer_tubes.select{|t| t[:recoil] == max}
                best_tube = best_tubes.max_by{|t| t[:ergonomics]}
                recoil += best_tube[:recoil]
                stocks = best_tube.stocks
                stock_recoils = stocks.map{|stock| stock[:recoil]}
                new_max = stock_recoils.max()
                best_stocks = stocks.select{|stock| stock[:recoil] == new_max}
                best_stock = best_stocks.max_by{|stock| stock[:ergonomics]}
                recoil += best_stock[:recoil]
                if recoil > recoil2
                    [best_tube, best_stock]
                else
                    best_stock2
                end
               
            else
                buffer_tubes = self.buffer_tubes
                recoils = buffer_tubes.map{|t| t[:recoil]}
                max = recoils.max()
                best_tubes = buffer_tubes.select{|t| t[:recoil] == max}
                best_tube = best_tubes.max_by{|t| t[:ergonomics]}
                recoil += best_tube[:recoil]
                stocks = best_tube.stocks
                stock_recoils = stocks.map{|stock| stock[:recoil]}
                new_max = stock_recoils.max()
                best_stocks = stocks.select{|stock| stock[:recoil] == new_max}
                best_stock = best_stocks.max_by{|stock| stock[:ergonomics]}
                recoil += best_stock[:recoil]
                
            end
        else
            
            if self.stocks.count > 0
                stocks = self.stocks
                recoils = stocks.map{|s| s[:recoil]}
                max = recoils.max()
                best_stocks = stocks.select{|stock| stock[:recoil] == max}
                best_stock = best_stocks.max_by{|stock| stock[:ergonomics]}
                best_stock
            else
                "No stocks"
            end
            "No stocks"
        end
        
    end

    def best_muzzle_attachment
        recoil = 0
        recoil2 = 0
        if self.muzzle_adapters.count > 0
            if self.muzzles.count > 0
                adapters = self.muzzle_adapters
                recoils = adapters.map{|a| a[:recoil]}
                max = recoils.max()
                best_adapters = adapters.select{|a| a[:recoil] == max}
                best_adapter = best_adapters.max_by{|a| a[:ergonomics]}
                recoil += best_adapter[:recoil]
                muzzles = best_adapter.muzzles
                if muzzles.count > 0
                    muzzle_recoils = muzzles.map{|m| m[:recoil]}
                    recoil_max = muzzle_recoils.max()
                    best_muzzles = muzzles.select{|m| m[:recoil] == recoil_max}
                    best_muzzle = best_muzzles.max_by{|m| m[:ergonomics]}
                    recoil += best_muzzle[:recoil]

                    
                    muzzles2 = self.muzzles
                    recoils2 = muzzles2.map{|a| a[:recoil]}
                    max2 = recoils2.max()
                    best_muzzles2 = muzzles2.select{|m| m[:recoil] == max2}
                    best_muzzle2 = best_muzzles2.max_by{|m| m[:ergonomics]}
                    
                    recoil2 += best_muzzle2[:recoil]
                    if recoil > recoil2
                        [best_adapter, best_muzzle]
                    else
                        best_muzzle2
                    end
                else
                    best_adapter
                end
                
            else
                adapters = self.muzzle_adapters
                recoils = adapters.map{|a| a[:recoil]}
                max = recoils.max()
                best_adapters = adapters.select{|a| a[:recoil] == max}
                best_adapter = best_adapters.max_by{|a| a[:ergonomics]}
                muzzles = best_adapter.muzzles
            end
        elsif self.muzzles.count > 0 
                muzzles2 = self.muzzles
                recoils2 = muzzles2.map{|a| a[:recoil]}
                max2 = recoils2.max()
                best_muzzles2 = muzzles2.select{|m| m[:recoil] == max2}
                best_muzzle2 = best_muzzles2.max_by{|m| m[:ergonomics]}
                best_muzzle2
        else
            if self.best_barrel_recoil != "No barrels"
                if self.best_barrel_recoil.muzzles.count > 0
                    adapters = self.best_barrel_recoil.muzzle_adapters
                    
                    if adapters.count > 0
                        recoils = adapters.map{|a| a[:recoil]}
                        max = recoils.max()
                        best_adapters = adapters.select{|a| a[:recoil] == max}
                        best_adapter = best_adapters.max_by{|a| a[:ergonomics]}
                        recoil += best_adapter[:recoil]
                        if best_adapter.muzzles.count > 0
                            muzzles = best_adapter.muzzles
                            muzzle_recoils = muzzles.map{|m| m[:recoil]}
                            recoil_max = muzzle_recoils.max()
                            best_muzzles = muzzles.select{|m| m[:recoil] == recoil_max}
                            best_muzzle = best_muzzles.max_by{|m| m[:ergonomics]}
                            
                            recoil += best_muzzle[:recoil]
                            
                            muzzles2 = self.best_barrel_recoil.muzzles
                            recoils2 = muzzles2.map{|a| a[:recoil]}
                            max2 = recoils2.max()
                            best_muzzles2 = muzzles2.select{|m| m[:recoil] == max2}
                            best_muzzle2 = best_muzzles2.max_by{|m| m[:ergonomics]}
                            recoil2 += best_muzzle2[:recoil]
                            if recoil > recoil2
                                [best_adapter, best_muzzle]
                            else
                                best_muzzle2
                            end
                        else
                            best_adapter
                        end
                    else
                        muzzles2 = self.best_barrel_recoil.muzzles
                        recoils2 = muzzles2.map{|a| a[:recoil]}
                        max2 = recoils2.max()
                        best_muzzles2 = muzzles2.select{|m| m[:recoil] == max2}
                        best_muzzle2 = best_muzzles2.max_by{|m| m[:ergonomics]}
                        best_muzzle2
                    end
                    
                    

                else 
                    if self.best_barrel_recoil.muzzle_adapters.count > 0 
                        adapters = self.best_barrel_recoil.muzzle_adapters
                        recoils = adapters.map{|a| a[:recoil]}
                        max = recoils.max()
                        best_adapters = adapters.select{|a| a[:recoil] == max}
                        best_adapter = best_adapters.max_by{|a| a[:ergonomics]}
                        
                        recoil += best_adapter[:recoil]
                        if best_adapter.muzzles.count > 0
                            muzzles = best_adapter.muzzles
                            muzzle_recoils = muzzles.map{|m| m[:recoil]}
                            recoil_max = muzzle_recoils.max()
                            best_muzzles = muzzles.select{|m| m[:recoil] == recoil_max}
                            best_muzzle = best_muzzles.max_by{|m| m[:ergonomics]}
                            recoil += best_muzzle[:recoil]
                            best_muzzle
                        else
                            best_adapter
                        end
                    else
                        "No muzzle attachments"
                    end
                end
            else
                "No muzzle attachments"
            end
        end
    end

    def best_gun_build_recoil
        gun_parts = []
        pistol_grip = self.best_pistol_grip
        gun_parts << pistol_grip
        receiver = self.best_receiver_recoil
        if receiver != "No receivers"
            gun_parts << receiver
        else
        end
        handguard = self.best_handguard_recoil
        if handguard != "No handguards"
            gun_parts << handguard
        else
        end
        barrel = self.best_barrel_recoil
        if barrel != "No barrels"
            gun_parts << barrel
        else
        end
        foregrip = self.best_foregrip_recoil
        if foregrip != "No foregrips"
            gun_parts << foregrip
        else
        end
        stock = self.best_stock_recoil
        if stock != "No stocks"
            gun_parts << stock
        else
        end
        muzzle = self.best_muzzle_attachment
        if muzzle != "No muzzle attachments"
            gun_parts << muzzle
        else
        end

        gun_parts

    end




    # ******************************************************************************

    def best_receiver_ergonomics
        if self.receivers.count > 0
            receivers = self.receivers
            # best_receiver = receivers.max_by{|receiver| receiver[:recoil]}
            ergonomics = receivers.map{|r| r[:ergonomics]}
            max = ergonomics.max()
            best_receivers = receivers.select{|r| r[:ergonomics] == max}
            best_receiver = best_receivers.max_by{|r| r[:recoil]}
            best_receiver
        else
            "No receivers"
        end
        # byebug
    end

    def best_handguard_ergonomics
        if self.handguards.count > 0
            handguards = self.handguards
            best_handguard = handguards.max_by{|handguard| handguard[:ergonomics]}
            best_handguard
            
        else
            if self.receivers.count > 0
                receivers = self.receivers

                best_receiver = receivers.max_by{|receiver| receiver[:ergonomics]}
                handguards = best_receiver.handguards
                if handguards.length > 0
                    ergonomics = handguards.map{|h| h[:ergonomics]}
                    max = ergonomics.max()
                    best_guards = handguards.select{|h| h[:ergonomics] == max}
                    best_handguard = best_guards.max_by{|g| g[:recoil]}
                    best_handguard
                else
                    "No handguards"
                end
            else
                "No handguards"
            end
            
        end
    end

    def best_barrel_ergonomics
        if self.barrels.count > 0
            barrels = self.barrels
            ergonomics = barrels.map{|b| b[:ergonomics]}
            max = ergonomics.max()
            best_barrels = barrels.select{|b| b[:ergonomics] == max}
            best_barrel = best_barrels.max_by{|b| b[:recoil]}
            best_barrel
            
        else
            receiver = self.best_receiver_ergonomics
            
            if receiver != "No receivers"
                if receiver.barrels.count > 0
                    barrels = receiver.barrels
                    ergonomics = barrels.map{|b| b[:ergonomics]}
                    max = ergonomics.max()
                    best_barrels = barrels.select{|b| b[:ergonomics] == max}
                    best_barrel = best_barrels.max_by{|b| b[:recoil]}
                    best_barrel
                else
                    "No barrels"
                end
            else
                "No barrels"
            end
            
        end
    end

    def best_foregrip_ergonomics
        if self.best_handguard_ergonomics == "No handguards"
            if self.mounts.count > 0
                mount = self.mounts.max_by {|m| m[:ergonomics]}
                foregrips = mount.foregrips
                ergonomics = foregrips.map{|f| f[:ergonomics]}
                max = ergonomics.max()
                best_foregrips = foregrips.select{|f| f[:ergonomics] == max}
                best_foregrip = best_foregrips.max_by{|f| f[:recoil]}
                [best_foregrip, mount]
            else
                "No foregrips"
            end
            
        else
            handguard = self.best_handguard_ergonomics
            if handguard.mounts.count > 0
                mount = handguard.mounts.max_by{|m| m[:ergonomics]}
                foregrips = mount.foregrips
                ergonomics = foregrips.map{|f| f[:ergonomics]}
                max = ergonomics.max()
                best_foregrips = foregrips.select{|f| f[:ergonomics] == max}
                best_foregrip = best_foregrips.max_by{|f| f[:recoil]}
                [best_foregrip, mount]
            else
                "No foregrips"
            end
            
        end
    end

    def best_stock_ergonomics
        recoil = 0
        recoil2 = 0
        if self.buffer_tubes.count > 0 
            if self.stocks.count > 0
                stocks2 = self.stocks
                ergonomics2 = stocks2.map{|s| s[:ergonomics]}
                max2 = ergonomics2.max()
                best_stocks2 = stocks2.select{|s| s[:ergonomics] == max2}
                best_stock2 = best_stocks2.max_by{|s| s[:recoil]}
                recoil2 += best_stock2[:ergonomics]

                buffer_tubes = self.buffer_tubes
                ergonomics = buffer_tubes.map{|t| t[:ergonomics]}
                max = ergonomics.max()
                best_tubes = buffer_tubes.select{|t| t[:ergonomics] == max}
                best_tube = best_tubes.max_by{|t| t[:recoil]}
                recoil += best_tube[:ergonomics]
                stocks = best_tube.stocks
                stock_ergonomics = stocks.map{|stock| stock[:ergonomics]}
                new_max = stock_ergonomics.max()
                best_stocks = stocks.select{|stock| stock[:ergonomics] == new_max}
                best_stock = best_stocks.max_by{|stock| stock[:recoil]}
                recoil += best_stock[:ergonomics]
                if recoil > recoil2
                    [best_tube, best_stock]
                else
                    best_stock2
                end
               
            else
                buffer_tubes = self.buffer_tubes
                
                ergonomics = buffer_tubes.map{|t| t[:ergonomics]}
                max = ergonomics.max()
                best_tubes = buffer_tubes.select{|t| t[:ergonomics] == max}
                best_tube = best_tubes.max_by{|t| t[:recoil]}
                
                recoil += best_tube[:ergonomics]
                stocks = best_tube.stocks
               
                stock_ergonomics = stocks.map{|stock| stock[:ergonomics]}
                new_max = stock_ergonomics.max()
                best_stocks = stocks.select{|stock| stock[:ergonomics] == new_max}
                best_stock = best_stocks.max_by{|stock| stock[:recoil]}
                
                recoil += best_stock[:ergonomics]
                
            end
        else
            
            if self.stocks.count > 0
                stocks = self.stocks
                ergonomics = stocks.map{|s| s[:ergonomics]}
                max = ergonomics.max()
                best_stocks = stocks.select{|stock| stock[:ergonomics] == max}
                best_stock = best_stocks.max_by{|stock| stock[:recoil]}
                best_stock
            else
                "No stocks"
            end
            "No stocks"
        end
        
    end

    def best_muzzle_attachment_ergonomics
        recoil = 0
        recoil2 = 0
        if self.muzzle_adapters.count > 0
            if self.muzzles.count > 0
                adapters = self.muzzle_adapters
                ergonomics = adapters.map{|a| a[:ergonomics]}
                max = ergonomics.max()
                best_adapters = adapters.select{|a| a[:ergonomics] == max}
                best_adapter = best_adapters.max_by{|a| a[:recoil]}
                recoil += best_adapter[:ergonomics]
                muzzles = best_adapter.muzzles
                if muzzles.count > 0
                    muzzle_recoils = muzzles.map{|m| m[:ergonomics]}
                    recoil_max = muzzle_recoils.max()
                    best_muzzles = muzzles.select{|m| m[:ergonomics] == recoil_max}
                    best_muzzle = best_muzzles.max_by{|m| m[:recoil]}
                    recoil += best_muzzle[:ergonomics]

                    
                    muzzles2 = self.muzzles
                    recoils2 = muzzles2.map{|a| a[:ergonomics]}
                    max2 = recoils2.max()
                    best_muzzles2 = muzzles2.select{|m| m[:ergonomics] == max2}
                    best_muzzle2 = best_muzzles2.max_by{|m| m[:recoil]}
                    
                    recoil2 += best_muzzle2[:ergonomics]
                    if recoil > recoil2
                        [best_adapter, best_muzzle]
                    else
                        best_muzzle2
                    end
                else
                    best_adapter
                end
                
            else
                adapters = self.muzzle_adapters
                recoils = adapters.map{|a| a[:ergonomics]}
                max = recoils.max()
                best_adapters = adapters.select{|a| a[:ergonomics] == max}
                best_adapter = best_adapters.max_by{|a| a[:recoil]}
                muzzles = best_adapter.muzzles
            end
        elsif self.muzzles.count > 0 
                muzzles2 = self.muzzles
                recoils2 = muzzles2.map{|a| a[:ergonomics]}
                max2 = recoils2.max()
                best_muzzles2 = muzzles2.select{|m| m[:ergonomics] == max2}
                best_muzzle2 = best_muzzles2.max_by{|m| m[:recoil]}
                best_muzzle2
        else
            if self.best_barrel_ergonomics != "No barrels"
                if self.best_barrel_ergonomics.muzzles.count > 0
                    adapters = self.best_barrel_ergonomics.muzzle_adapters
                    
                    if adapters.count > 0
                        recoils = adapters.map{|a| a[:ergonomics]}
                        max = recoils.max()
                        best_adapters = adapters.select{|a| a[:ergonomics] == max}
                        best_adapter = best_adapters.max_by{|a| a[:recoil]}
                        recoil += best_adapter[:ergonomics]
                        if best_adapter.muzzles.count > 0
                            muzzles = best_adapter.muzzles
                            muzzle_recoils = muzzles.map{|m| m[:ergonomics]}
                            recoil_max = muzzle_recoils.max()
                            best_muzzles = muzzles.select{|m| m[:ergonomics] == recoil_max}
                            best_muzzle = best_muzzles.max_by{|m| m[:recoil]}
                            
                            recoil += best_muzzle[:ergonomics]
                            
                            muzzles2 = self.best_barrel_ergonomics.muzzles
                            recoils2 = muzzles2.map{|a| a[:ergonomics]}
                            max2 = recoils2.max()
                            best_muzzles2 = muzzles2.select{|m| m[:ergonomics] == max2}
                            best_muzzle2 = best_muzzles2.max_by{|m| m[:recoil]}
                            recoil2 += best_muzzle2[:ergonomics]
                            if recoil > recoil2
                                [best_adapter, best_muzzle]
                            else
                                best_muzzle2
                            end
                        else
                            best_adapter
                        end
                    else
                        muzzles2 = self.best_barrel_ergonomics.muzzles
                        recoils2 = muzzles2.map{|a| a[:ergonomics]}
                        max2 = recoils2.max()
                        best_muzzles2 = muzzles2.select{|m| m[:ergonomics] == max2}
                        best_muzzle2 = best_muzzles2.max_by{|m| m[:recoil]}
                        best_muzzle2
                    end
                    
                    

                else 
                    if self.best_barrel_ergonomics.muzzle_adapters.count > 0 
                        adapters = self.best_barrel_ergonomics.muzzle_adapters
                        recoils = adapters.map{|a| a[:ergonomics]}
                        max = recoils.max()
                        best_adapters = adapters.select{|a| a[:ergonomics] == max}
                        best_adapter = best_adapters.max_by{|a| a[:recoil]}
                        
                        recoil += best_adapter[:ergonomics]
                        if best_adapter.muzzles.count > 0
                            muzzles = best_adapter.muzzles
                            muzzle_recoils = muzzles.map{|m| m[:ergonomics]}
                            recoil_max = muzzle_recoils.max()
                            best_muzzles = muzzles.select{|m| m[:ergonomics] == recoil_max}
                            best_muzzle = best_muzzles.max_by{|m| m[:recoil]}
                            recoil += best_muzzle[:ergonomics]
                            best_muzzle
                        else
                            best_adapter
                        end
                    else
                        "No muzzle attachments"
                    end
                end
            else
                "No muzzle attachments"
            end
        end
    end

    def best_gun_build_ergonomics
        gun_parts = []
        pistol_grip = self.best_pistol_grip
        gun_parts << pistol_grip
        receiver = self.best_receiver_ergonomics
        if receiver != "No receivers"
            gun_parts << receiver
        else
        end
        handguard = self.best_handguard_ergonomics
        if handguard != "No handguards"
            gun_parts << handguard
        else
        end
        barrel = self.best_barrel_ergonomics
        if barrel != "No barrels"
            gun_parts << barrel
        else
        end
        foregrip = self.best_foregrip_ergonomics
        if foregrip != "No foregrips"
            gun_parts << foregrip
        else
        end
        stock = self.best_stock_ergonomics
        if stock != "No stocks"
            gun_parts << stock
        else
        end
        muzzle = self.best_muzzle_attachment_ergonomics
        if muzzle != "No muzzle attachments"
            gun_parts << muzzle
        else
        end

        gun_parts

    end


end
