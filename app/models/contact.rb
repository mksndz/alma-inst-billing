class Contact < ActiveRecord::Base

  validates_uniqueness_of :email

  has_and_belongs_to_many :integrations
  belongs_to :institution

  def name
    "#{first_name} #{last_name}"
  end

end
