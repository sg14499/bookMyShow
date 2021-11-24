class ScreensController < ApplicationController
  def create
    @cinemas = Cinema.find(params[:cinema_id])
    @screens = @cinemas.screens.create(screens_params)
    redirect_to cinemas_path(@cinemas)

  end

  private
    def screens_params
      params.require(:screens).permit(:cinema_id,:no_of_seats)
    end
end
