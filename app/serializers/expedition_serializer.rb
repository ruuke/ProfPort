class ExpeditionSerializer

  include FastJsonapi::ObjectSerializer

  attributes :title, :description
  # attributes :route_length do |object|
  #   object.itinerary.distance
  # end
      
  has_many :spaceships

end
