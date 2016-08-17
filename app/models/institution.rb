class Institution < ActiveRecord::Base

  validates_presence_of :name, :api_key
  validates_uniqueness_of :name

  has_many :contacts, dependent: :destroy

end