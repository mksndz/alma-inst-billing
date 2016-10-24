class DetailedAddressForInst < ActiveRecord::Migration
  def change
    change_table :institutions do |t|
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
    end
  end
end
