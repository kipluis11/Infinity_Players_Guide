class User < ApplicationRecord
    has_many :player_ratings
    has_many :units, through: :player_ratings

    #validates :username, uniqueness: true, presence: true

    has_secure_password

end
