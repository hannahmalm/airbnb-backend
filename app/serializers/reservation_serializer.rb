class ReservationsSerializer
    include FastJsonapi::ObjectSerializer
    attributes :start_date, :end_date, :listing_id, :user_id
    #A reservation only has one listing 
  end
