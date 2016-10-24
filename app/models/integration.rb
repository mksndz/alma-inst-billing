class Integration < ActiveRecord::Base

  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :integration_configs
  has_many :institutions, through: :integration_configs

end