class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  alias_method :current_user, :current_institution

end
