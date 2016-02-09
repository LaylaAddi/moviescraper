class PagesController < ApplicationController
  
  def index
    @movies = Movie.all.last(8)
  end

  def about
  end

  def contact
  end
end
