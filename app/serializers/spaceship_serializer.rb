class SpaceshipSerializer
  
  include FastJsonapi::ObjectSerializer

  attributes :title, :velocity

  belongs_to :expedition

end
