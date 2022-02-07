class Api::V1::LocationsController < ApplicationController


    def index
        @locations = Location.all
    
        render json: @locations
      end
    
      # GET /locations/1
      def show
        render json: @locations, status: 200
      end
end 