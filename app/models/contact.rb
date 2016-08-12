class Contact < ActiveRecord::Base

  validates_presence_of :name, :email
  validates_uniqueness_of :name, :email

  belongs_to :institution

end
