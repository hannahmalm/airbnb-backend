class Api::V1::ReservationsController < ApplicationController


    def index
        @reservations = Reservations.all
    
        render json: @reservations
      end
    
      # GET /reviews/1
      def show
        render json: @reservations, status: 200
      end

end