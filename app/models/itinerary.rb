class Itinerary < ApplicationRecord

  belongs_to :expedition
  has_many :itinerary_entries, dependent: :destroy
  has_many :planets, through: :itinerary_entries, dependent: :destroy

  def distance_count
  	planets.sum :distance
  end

end
