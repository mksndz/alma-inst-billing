class RemoveContactFields < ActiveRecord::Migration
  def change
    change_table :contacts do |t|
      t.remove :notify
      t.remove :bill
      t.remove :feid
      t.remove :pay_to
      t.remove :pay_types
    end
  end
end
