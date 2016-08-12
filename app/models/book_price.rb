class BookPrice < ActiveRecord::Base

  validates_presence_of :lc_start, :lc_end, :description, :price
  validates_uniqueness_of :lc_start, :lc_end, :description

end
