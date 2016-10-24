class RemoveBookPrice < ActiveRecord::Migration
  def change
    drop_table :book_prices
  end
end
