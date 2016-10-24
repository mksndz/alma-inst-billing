class AddDeviseToInstitutions < ActiveRecord::Migration
  def self.up
    change_table :institutions do |t|
      t.remove :email

      ## Database authenticatable
      t.string :email,              null: false, default: ''
      t.string :encrypted_password, null: false, default: ''

    end

    add_index :institutions, :email,                unique: true

  end

  def self.down
    # By default, we don't want to make any assumption about how to roll back a migration when your
    # model already existed. Please edit below which fields you would like to remove in this migration.
    raise ActiveRecord::IrreversibleMigration
  end
end
