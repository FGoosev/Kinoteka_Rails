class SearchController < ApplicationController
  def perform
    param =  params[:q]
    @movies = Movie.all.where(:title => param)
    for i in @movies
      puts(i.id)
    end

  end
end
