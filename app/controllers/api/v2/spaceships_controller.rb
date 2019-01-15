module Api::V2
  class SpaceshipsController < ApiController

    def index
      render json: ::V2::SpaceshipSerializer.new(Spaceship.all).serialized_json
    end

    def show
      render json: ::V2::SpaceshipSerializer.new(Spaceship.find(params[:id])).serialized_json
    end

  end
end