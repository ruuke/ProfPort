module Api::V1
  class SpaceshipsController < ApiController

    def index
      render json: ::V1::SpaceshipSerializer.new(Spaceship.all).serialized_json
    end

  end
end
