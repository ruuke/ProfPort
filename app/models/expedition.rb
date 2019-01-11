class Expedition < ApplicationRecord
  has_many :users
  has_many :spaceships
  has_one :itinerary, foreign_key: :expedition_id, dependent: :destroy

  validates :title, length: {in: 5..50}, presence:true, uniqueness: true

  
  after_save :create_new_itinerary, on: :create

  private

  def create_new_itinerary
    create_itinerary
  end
end
