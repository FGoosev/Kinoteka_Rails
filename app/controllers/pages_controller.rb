class PagesController < ApplicationController
  def index
    if (params[:q] == "" || params[:q] == nil)
      @movie = Movie.all
    else
      @movie = Movie.all.where(:title => params[:q])
    end

  end
end
