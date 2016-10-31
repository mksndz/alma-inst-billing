class EndpointController < ApplicationController

  before_action :set_data

  def settings



  end

  def contacts

    @contacts = @institution.contacts

  end

  private

    def set_data

      @institution = Institution.find_by_code params[:inst]
      # @integration = Integration.find_by_api_key

    end

end