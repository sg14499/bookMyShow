class SlotsController < ApplicationController
  def index
    @screen = Screen.find(params[:screen_id])
    @slots = @screen.slots
  end

  def show
    @screen = Screen.find(params[:screen_id])
    @slots = Slot.find(params[:id])
  end

  def create
    @screen = Screen.find(params[:screen_id])
    @slots = @screen.slots.create(slot_params)
    redirect_to screen_path(@screen)

  end

  private
    def slot_params
      params.require(:slot).permit(:movie_id,:slot_time,:num_seat_booked)
    end
end
