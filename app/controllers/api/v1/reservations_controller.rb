class Api::V1::ReservationsController < ApplicationController


    def index
      #Who is the current user? 
        # @reservations = Reservation.all
        if logged_in? 
          @reservations = current_user.reservations
          render json: @reservations
        else 
          render json : {
            error: "Please log in"
          }
      end
    
      # GET /reservations/1
      def show
        render json: @reservations, status: 200
      end

end