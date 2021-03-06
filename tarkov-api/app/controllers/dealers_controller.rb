class DealersController < ApplicationController

    def index
        dealers = Dealer.all
        render json: dealers
    end

    def show
        dealer = Dealer.find(params[:id])
        render json: dealer
    end

    def dealer_items
        dealer = Dealer.find(params[:id])
        items = dealer.all_items
        render json: items
    end

    def images
        dealer = Dealer.new()
        images = [Dealer.find(1).image, Dealer.find(2).image, Dealer.find(3).image, Dealer.find(4).image, Dealer.find(5).image, Dealer.find(6).image, Dealer.find(7).image, Dealer.find(8).image]
        render json: images
    end

end
