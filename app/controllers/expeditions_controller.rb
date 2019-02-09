class ExpeditionsController < ApplicationController

  before_action :find_expedition, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!

  def index
    authorize Expedition
    @expeditions = Expedition.all
    respond_to do |format|
      format.html
      format.json { render json: @expeditions }
    
  end

  def show
    @spaceship = Spaceship.new
  end
  
  def new
    authorize Expedition
    @expedition = Expedition.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    authorize Expedition
    @expedition = Expedition.new(expedition_params)

    if @expedition.save
      respond_to do |format|
        format.html { redirect_to expeditions_path }
        format.js
      end     
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @expedition.update(expedition_params)
      redirect_to @expedition
    else
      render :edit
    end
  end

  def destroy
    @expedition.destroy
    
    respond_to do |format|
      format.html do
        if @expedition.destroyed?
          flash[:notice] = 'Удаление прошло успешно'
        else
          flash[:alert] = 'Ошибка удаления'
        end
        redirect_to expeditions_path
      end
      format.js
    end
    end
  end

  private

  def find_expedition
    @expedition = Expedition.find(params[:id]) 
    authorize @expedition   
  end

  def expedition_params
    params.require(:expedition).permit(:title, :description)
  end

end
