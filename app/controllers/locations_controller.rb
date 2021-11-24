class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def show 
    @locations = Location.find(params[:id])
  end

  def new
      @locations = Location.new
    end

    def create
      @locations = Location.new(location_params)

      if @locations.save
          redirect_to @locations
      else
          render :new
      end
    end

    def edit
      @locations = Location.find(params[:id])
    end

    def update
      @locations = Location.find(params[:id])

      if @locations.update(location_params)
          redirect_to @locations
      else
          render :edit
      end
    end

    private
      def location_params
          params.require(:locations).permit(:city)
      end
end
