module Sessionable
  def logged_in?
    session[:user_id] != nil
  end

  def current_user
    @current_user ||= User.find(session[:okta_id]) if logged_in?
  end
end
