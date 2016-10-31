class SecureController < ApplicationController

  before_action :authenticate_institution!

end