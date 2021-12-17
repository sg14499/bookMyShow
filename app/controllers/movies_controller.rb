class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to @movie
    else
      render :new
    end
  end

  def search
    if params[:search].blank?
      redirect_to movies_path and return
    else
      @parameter = params[:search].downcase
      @results = Movie.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      redirect_to @movie
    else
      render :edit
    end
  end

  private
    def movie_params
      params.require(:movie).permit(:name, :description, :category, :language, :duration, :release_date)
    end
    
end
