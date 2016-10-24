class RemoveInstEmail < ActiveRecord::Migration
  def change
    change_table :institutions do |t|
      t.remove :email
    end
  end
end
