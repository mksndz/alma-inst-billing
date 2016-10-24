class IntegrationConfig < ActiveRecord::Base

  serialize :config

  belongs_to :integration
  belongs_to :institution

end