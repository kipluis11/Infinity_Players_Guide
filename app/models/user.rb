class User < ApplicationRecord
    has_many :player_ratings
    has_many :rated_units, through: :player_ratings, source: :unit
    has_many :units

    validates :username, uniqueness: true, presence: true

    has_secure_password

end
