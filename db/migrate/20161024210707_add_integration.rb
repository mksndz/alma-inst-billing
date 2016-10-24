class AddIntegration < ActiveRecord::Migration
  def change
    create_table :integrations do |t|
      t.string :name
      t.string :description
    end
  end
end
