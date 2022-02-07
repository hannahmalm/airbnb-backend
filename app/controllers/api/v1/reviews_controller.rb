class Api::V1::ReviewsController < ApplicationController

    def index
        @reviews = Reviews.all
    
        render json: @reviews
      end
    
      # GET /reviews/1
      def show
        render json: @reviews, status: 200
      end

end 