class FixBookPricePrice < ActiveRecord::Migration
  def change
    change_table :book_prices do |t|
      t.remove :price
      t.float :price
    end
  end
end
