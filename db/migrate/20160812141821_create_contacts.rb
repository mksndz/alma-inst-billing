class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|

      t.string :name, null: false
      t.string :address, null: false
      t.string :phone, null: false
      t.string :email, null:false
      t.references :institution

      t.timestamps null: false
    end
  end
end
