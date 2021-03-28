class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :redirect_if_not_logged_in
  helper_method :current_user

  private 
  def redirect_if_not_logged_in
    redirect_to '/' unless logged_in
  end 

  def logged_in 
    !!current_user
  end 

  def current_user 
    User.find_by(id: session[:user_id])
  end 
end
