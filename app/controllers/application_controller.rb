class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def user_signed_in?
    session[:user_id].present?
  end
  helper_method

  def sign_in(user)
    session[:user_id] = user.id
  end

  def auction_owner?(auction)
    current_user == auction.user
  end

  def authenticate_user!
    redirect_to new_session_path, alert: "please sign in" unless user_signed_in?
  end

  helper_method :current_user, :user_signed_in?, :sign_in, :auction_owner?
end
