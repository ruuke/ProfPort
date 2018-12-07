class ExpeditionsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @expedition = Expedition.new
  end

  def create
    flash[:notice] = "Expedition successfully created"
    render plain: params.inspect
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
