class PagesController < ApplicationController
  before_filter :allow_iframe_requests 
  def index
    @movies = Movie.all.last(8)
  end

  def about
    if current_user
      redirect_to :root
    end
  end

  def contact
  end
end
