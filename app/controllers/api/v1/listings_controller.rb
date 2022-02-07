class Api::V1::ListingsController < ApplicationController

    def index
        @listings = Listings.all
    
        render json: @listings
      end
    
      # GET /reviews/1
      def show
        render json: @listings, status: 200
      end

end 