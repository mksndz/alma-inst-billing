class Institution < ActiveRecord::Base

  has_many :contacts, dependent: :destroy

  validates_presence_of :name

end
