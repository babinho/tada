class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_user_logged_in!
  helper_method :current_user

  protected
  def check_user_logged_in!
    authenticate_user!
  end
end

