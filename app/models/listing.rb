class Listing < ApplicationRecord
    belongs_to :location
    has_many :reviews
    has_many :reservations
end
