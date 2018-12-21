class SpaceshipsController < ApplicationController

  before_action :find_expedition, only: %i[new create]
  before_action :find_spaceship, only: %i[show edit update destroy]


  def show
  end
  
  def new
    @spaceship = @expedition.spaceships.new
  end

  def create
    @spaceship = @expedition.spaceships.new(spaceship_params)

    if @spaceship.save
      redirect_to @spaceship.expedition
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @spaceship.update(spaceship_params)
      redirect_to @spaceship_params
    else
      render :edit
    end
  end

  def destroy
    @spaceship.destroy
    redirect_to @spaceship.expedition
  end

  private

  def find_expedition
    @expedition = Expedition.find(params[:expedition_id])
  end

  def find_spaceship
    @spaceship = Spaceship.find(params[:id])
  end

  def spaceship_params
    params.require(:spaceship).permit(:title, :velocity)
  end

end

