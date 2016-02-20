class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception 
  def allow_iframe_requests
    response.headers.delete('X-Frame-Options')
  end

  
  
  def current_user_subscribed?
    user_signed_in? && current_user.subscribed?
  end
  
  helper_method :current_user_subscribed?
  
   rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
end

  
  
