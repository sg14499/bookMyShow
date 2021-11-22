class MoviesController < ApplicationController
	def index
    @movies = Movie.all
  end

  def show
    @movies = Movie.find(params[:id])
  end

  def new
    @movies = Movie.new
  end

  def create
    @movies = Movie.new(user_params)

    if @movies.save
      redirect_to @movies
    else
      render :new
    end
  end

  def edit
    @movies = Movie.find(params[:id])
  end

  def update
    @movies = Movie.find(params[:id])

    if @movies.update(movie_params)
      redirect_to @movies
    else
      render :edit
    end
  end

  private
    def movie_params
      params.require(:movies).permit(:name,:description,:category,:language,:duration,:release_date)
    end
end
