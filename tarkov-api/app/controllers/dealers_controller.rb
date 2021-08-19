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
        images = dealer.images
        render json: images
    end

end
