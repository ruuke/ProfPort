class Expedition < ApplicationRecord
  has_many :spaceships
  has_one :itinerary

  validates :title, presence:true, uniqueness: true

  
  # after_initialize :create_new_itinerary

  private

  def create_new_itinerary
  	create_itinerary
  end
end
