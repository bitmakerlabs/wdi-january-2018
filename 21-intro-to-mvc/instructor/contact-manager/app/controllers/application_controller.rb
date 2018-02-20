class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    # returns who the currently logged in user is
  end
end
