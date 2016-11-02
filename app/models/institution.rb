class Institution < ActiveRecord::Base

  devise :database_authenticatable

  validates_presence_of :name, :code
  validates_uniqueness_of :name

  has_many :contacts, dependent: :destroy
  has_many :integration_configs
  has_many :integrations, through: :integration_configs

  def is_god?
    !!god
  end

end