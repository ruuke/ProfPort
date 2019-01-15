module Api::V2
  class ExpeditionsController < ApiController

    before_action :find_expedition, only: %i[show update destroy]

    def index
      render json: ::V2::ExpeditionSerializer.new(Expedition.all).serialized_json
    end

    def update
      @expedition.update(expedition_params)
    end

    private

    def find_expedition
      @expedition = Expedition.find(params[:id])    
    end

    def expedition_params
      params.permit(:title, :description)
    end
    
  end
end