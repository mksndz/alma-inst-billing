class AddApIkeyToInstitution < ActiveRecord::Migration
  def change

    change_table :institutions do |t|
      t.string :api_key
    end

  end
end
