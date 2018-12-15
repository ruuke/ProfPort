class Expedition < ApplicationRecord
  has_many :spaceships
  has_one :itinerary

  validates :title, presence:true, uniqueness: true

  before_save :change_title
  after_save :create_new_itinerary

  private

  def change_title
    self.title = "Ex: #{self.title.downcase}"
  end

  def create_new_itinerary
  	create_itinerary
  end
end
