module IntegrationsHelper

  def has_custom_form?(integration)
    integration.partial.present?
  end

  def integration_partial_for(integration_config, default = 'form')
    partial = integration_config.integration.partial

    # if template_exists? partial
    if partial
      partial
    else
      default
    end

  end

end