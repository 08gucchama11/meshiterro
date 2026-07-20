class ApplicationController < ActionController::Base
  include Authentication
  allow_browser versions: :modern

  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  private

  def after_authentication_url
    about_path
  end

  def after_logout_url
    about_path
  end
end

