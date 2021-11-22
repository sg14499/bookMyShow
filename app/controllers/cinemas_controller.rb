class CinemasController < ApplicationController
	def create
		@locations = Location.find(params[:location_id])
		@cinemas = @locations.cinemas.create(cinema_params)
		redirect_to location_path(@locations)

	end

	private
		def cinema_params
			params.require(:cinemas).permit(:city,:location_id)
		end

end
