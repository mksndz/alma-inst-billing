class AddCodeToInstitution < ActiveRecord::Migration
  def change
    change_table :institutions do |t|
      t.string :code, limit: 12
    end
  end
end
