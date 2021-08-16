class WeaponsController < ApplicationController

    def index
        guns = Weapon.all
        render json: guns
    end

    def recoil_build
        gun = Weapon.find(params[:id])
        parts = gun.best_gun_build_recoil
        render json: parts
    end

    def weapon_items
        weapon = Weapon.find(params[:id])
        items = weapon.all_items
        render json: items
    end


end
