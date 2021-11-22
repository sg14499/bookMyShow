class CinemasController < ApplicationController
	def create
		@locations = Location.find(params[:location_id])
		@cinemas = @user.cinemas.create(cinema_params)
		redirect_to article_path(@locations)

	end

	private
		def cinema_params
			params.require(:cinemas).permit(:city,:location_id)
		end

end
