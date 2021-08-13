class WeaponsController < ApplicationController

    def index
        guns = Weapon.all
        render json: guns
    end

    def recoil_build
        gun = Weapon.find
    end


end
