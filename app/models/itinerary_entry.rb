class ItineraryEntry < ApplicationRecord

  belongs_to :itinerary
  belongs_to :planet

  validates :weight, numericality: { only_integer: true, greater_than_or_equel_to: 1 }, presence: true, uniqueness: { scope: :itinerary_id }

end
