class Unit < ApplicationRecord
  belongs_to :faction
  belongs_to :user
  has_many :player_ratings
  has_many :users, through: :player_ratings
  accepts_nested_attributes_for :faction

  validates :faction, presence: true
  validates :name, uniqueness: {scope: :faction, message: "is already in the system and is ready to be rated"}

  #this is for long validation
  #validate :no_duplicate_faction

  def faction_attributes=(name)
    faction = Faction.find_or_create_by(
      name) if !attributes['name'].empty?
  end
#this is long way to do validation, try scoping instead but keep this in case something breaks. 
  #def no_duplicate_faction
    #if Unit.find_by(name: name, faction_id: faction_id)
     # errors. add(:name, "is already in the system and is ready to be rated")
    #end
  #end

end
