class SlotsController < ApplicationController
	def create
		@screens = Screen.find(params[:screen_id])
		@slots = @screens.slots.create(slot_params)
		redirect_to article_path(@screens)

	end

	private
		def slot_params
			params.require(:slots).permit(:movie_id,:screen_id,:slot_time,:num_seat_booked)
		end
end
