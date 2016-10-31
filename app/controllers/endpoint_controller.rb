class EndpointController < ApplicationController

  before_action :get_institution_and_integration

  # rescue_from ActiveModel::

  def settings



  end

  def contacts

    @contacts = Institution.contacts

    c = @contacts.count

  end

  private

    def get_institution_and_integration

      @institution = Institution.find_by_code params[:inst]
      # @integration = Integration.find_by_api_key

    end

end