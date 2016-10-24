class Institution < ActiveRecord::Base

  validates_presence_of :name, :code
  validates_uniqueness_of :name

  has_many :contacts, dependent: :destroy

end