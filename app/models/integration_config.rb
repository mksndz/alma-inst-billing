class IntegrationConfig < ActiveRecord::Base

  validate :config_must_be_a_valid_json_object

  serialize :config

  belongs_to :integration
  belongs_to :institution

  def config_must_be_a_valid_json_object
    begin
      JSON.parse(config)
    rescue JSON::ParserError
      errors.add(:config, 'is not a valid JSON object')
    end
  end

end