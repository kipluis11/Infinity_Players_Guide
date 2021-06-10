class Unit < ApplicationRecord
  belongs_to :faction
  has_many :player_ratings
  has_many :users, through: :player_ratings
end
