class PagesController < ApplicationController
  
  def index
    if current_user
      redirect_to movies_path
    end
    @movies = Movie.all
  end

  def about
  end

  def contact
  end
end
