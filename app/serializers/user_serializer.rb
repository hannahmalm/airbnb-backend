class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username
  has_many :reservations, serializer: ReservationsSerializer
end
