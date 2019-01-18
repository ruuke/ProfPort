module Api::V2
  class ExpeditionsController < ApiController

    before_action :find_expedition, only: %i[update destroy]

    def index
      render json: ::V2::ExpeditionSerializer.new(Expedition.all).serialized_json
    end

    def show
      render json: ::V2::ExpeditionSerializer.new(Expedition.find(params[:id])).serialized_json
    end

    def create
      @expedition = Expedition.new(expedition_params)
      if @expedition.save
        render json: "succses"
      else
        render json: @expedition.errors
      end
    end

    def update
      @expedition.update(expedition_params)
      if @expedition.save
        render json: @expedition.to_json
      else
        render json: @expedition.errors
      end
    end

    def destroy
      @expedition.destroy
      if @expedition.destroy
        render json: "succses"
     
        rescue_from ActiveRecord::RecordNotFound do |e|
          render json: { error: e.message }
        end
      end
    end

    private

    def find_expedition
      @expedition = Expedition.find(params[:id])    
    end

    def expedition_params
      params.require(:expedition).permit(:title, :description)
    end
    
  end
end