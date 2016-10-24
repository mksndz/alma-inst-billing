class RemoveNumFromPrimaryAddress < ActiveRecord::Migration
  def change
    change_table :contacts do |t|
      t.remove :address1
      t.string :address
    end
  end
end
