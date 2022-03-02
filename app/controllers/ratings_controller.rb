class RatingsController < ApplicationController

  def create
    @movie = Movie.find params[:movie_id]
    @rating = @movie.ratings.build rating_params
    if @rating.save
      redirect_to movie_path(@movie)
    else
      @rating = @movie.ratings.order created_at: :desc
      render "movies/show"
    end
  end

  def destroy
    def destroy
      @movie = Movie.find params[:movie_id]
      @rating = @movie.ratings.find params[:id]
      @rating.destroy
      redirect_to movie_path(@movie)
    end
  end

  private def rating_params
    params.require(:rating).permit(:body, :rate)
  end
end
