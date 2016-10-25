class AddGodFlag < ActiveRecord::Migration
  def change
    change_table :institutions do |t|
      t.boolean :god, default: false
    end

    Institution.all.each do |i|
      i.god = i.code == 'usg'
      i.save
    end

  end
end
