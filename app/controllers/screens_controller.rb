class ScreensController < ApplicationController
  def index
    @cinema = Cinema.find(params[:cinema_id])
    @screens= @cinema.screens 
  end

  def show
    @screens = Screen.find(params[:id])
  end

  def create
    @cinema = Cinema.find(params[:cinema_id])
    @screen = @cinema.screens.create(screens_params)
    redirect_to cinema_path(@cinema)

  end

  private
    def screens_params
      params.require(:screen).permit(:no_of_seats)
    end
end
