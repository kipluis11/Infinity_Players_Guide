class User < ApplicationRecord
    has_many :player_ratings
    has_many units, through: :player_ratings

end
