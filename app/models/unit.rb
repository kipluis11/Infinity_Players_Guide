class Unit < ApplicationRecord
  belongs_to :faction
  belongs_to :user
  has_many :player_ratings
  has_many :users, through: :player_ratings
  accepts_nested_attributes_for :faction

  #def faction_attributes=(attributes)
    #faction = Faction.find_or_create_by(
      #attributes) if !name.empty?
  #end

end
