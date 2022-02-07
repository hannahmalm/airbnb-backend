class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: true
    has_many :reservations
    has_many :reviews
    has_many :listings, through: :reservations
    has_many :locations, through: :reservations
end
