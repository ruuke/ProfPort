class Planet < ApplicationRecord

  has_many :itinerary_entries
  has_many :itinerary, through: :itinerary_entries

  scope :available, -> { where(access: true) }

end
