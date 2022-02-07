class Api::V1::ReservationsController < ApplicationController


    def index
        @reservations = Reservation.all
        render json: @reservations
      end
    
      # GET /reservations/1
      def show
        render json: @reservations, status: 200
      end

end