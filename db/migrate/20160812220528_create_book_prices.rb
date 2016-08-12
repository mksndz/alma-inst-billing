class CreateBookPrices < ActiveRecord::Migration
  def change
    create_table :book_prices do |t|

      t.string :lc_start
      t.string :lc_end
      t.string :description
      t.integer :price

      t.timestamps null: false
    end
  end
end
