class Api::V1::ListingsController < ApplicationController

    def index
        @listings = Listing.all

        render json: @listings
      end
    
      # GET /listings/1
      def show
        render json: @listings, status: 200
      end

end 