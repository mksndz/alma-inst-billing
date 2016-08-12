class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|

      t.string :name, null: false
      t.string :address
      t.string :phone

      t.timestamps null: false
    end
  end
end
