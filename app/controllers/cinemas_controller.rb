class CinemasController < ApplicationController

  def index
    @location = Location.find(params[:location_id])
    @cinemas = @location.cinemas
  end

  def new
    @cinemas = Cinema.new
  end

  def show
    @cinemas = Cinema.find(params[:id])
  end

  def create
    @location = Location.find(params[:location_id])
    @cinema = @location.cinemas.create(cinema_params)
    redirect_to location_path(@location)

  end

  private
    def cinema_params
      params.require(:cinema).permit(:name)
    end
end
