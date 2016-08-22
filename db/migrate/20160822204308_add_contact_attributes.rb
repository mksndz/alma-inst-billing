class AddContactAttributes < ActiveRecord::Migration
  def change
    change_table :contacts do |t|
      t.boolean :notify
      t.boolean :bill
      t.string :branch_campus
      t.string :feid
      t.string :pay_to
      t.string :pay_types

      t.remove :address
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
    end
  end
end
