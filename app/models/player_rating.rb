class PlayerRating < ApplicationRecord
  belongs_to :user
  belongs_to :unit

  validates :title, presence: true
  validates :stars, numericality: {only_integer: true, greater_than_or equal_to: 1, less_than: 6}
end
