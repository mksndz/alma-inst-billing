require 'logger'

class EndpointController < ApplicationController

  class InvalidRequest < StandardError; end

  before_action :validate_request

  rescue_from ActiveRecord::RecordNotFound do
    render nothing: true, status: :not_found
  end

  rescue_from InvalidRequest do
    render nothing: true, status: :unauthorized
  end

  def settings

    ics = IntegrationConfig.where(
        institution_id: @institution.id,
        integration_id: @integration.id
    )

    @ic = ics.first

    if @ic
      render :settings
    else
      render nothing: true, status: :no_content
    end

  end

  def contacts

    @contacts = @integration.contacts.where(institution_id: @institution.id)

  end

  private

    def validate_request

      @institution = Institution.where(code: params[:inst]).first
      @integration = Integration.where(api_key: request.env['HTTP_AUTHORIZATION']).first

      unless @institution
        raise ActiveRecord::RecordNotFound
      end

      unless @integration
        raise InvalidRequest
      end

    end

end