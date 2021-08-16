class WeaponsController < ApplicationController

    def index
        guns = Weapon.all
        render json: guns
    end

    def recoil_build
        gun = Weapon.find
    end

    def weapon_items
        weapon = Weapon.find(params[:id])
        items = weapon.all_items
        render json: items
    end


end
