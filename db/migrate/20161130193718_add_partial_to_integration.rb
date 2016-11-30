class AddPartialToIntegration < ActiveRecord::Migration
  def change
    change_table :integrations do |t|
      t.string :partial
    end
  end
end
