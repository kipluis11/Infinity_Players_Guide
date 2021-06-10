class Unit < ApplicationRecord
  belongs_to :faction
  belongs_to :user
  has_many :player_ratings
  has_many :users, through: :player_ratings
  accepts_nested_attributes_for :faction
end
