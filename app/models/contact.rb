class Contact < ActiveRecord::Base

  validates_uniqueness_of :email

  belongs_to :institution

  def name
    "#{first_name} #{last_name}"
  end

end
