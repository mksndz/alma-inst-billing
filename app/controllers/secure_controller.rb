class SecureController < ApplicationController

  check_authorization

  rescue_from CanCan::AccessDenied do |e|
    redirect_to root_url, alert: e.message
  end

end