class Planet < ApplicationRecord

  has_many :itinerary_entries, dependent: :destroy
  has_many :itinerary, through: :itinerary_entries, dependent: :destroy

  scope :available, -> { where(access: true) }

end
