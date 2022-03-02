class MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end
  def create
    @movie = Movie.new movie_params
    if @movie.save
      redirect_to root_path
    else
      render :new
    end

  end
  def show
    @movie = Movie.find(params[:id])
    @rating = @movie.ratings.build
    @ratings = @movie.ratings.order created_at: :desc
  end
  def edit
    @movie = Movie.find(params[:id])
  end
  def update
    @movie = Movie.find(params[:id])
    if @movie.update movie_params
      redirect_to movie_path
    else
      render :edit
    end
  end

  def perform
    @movies = Movie.all.where(:title => params[:q])
  end

  private def movie_params
    params.require(:movie).permit(:title, :body, :category_id)
  end
end
