class ExpeditionSerializer

  include FastJsonapi::ObjectSerializer

  attributes :title
  attributes :route_length do |object|
    object.itinerary.distance
  end
      
  has_many :spaceships
end
