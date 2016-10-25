class AddApiKeyToIntegration < ActiveRecord::Migration
  def change
    change_table :integrations do |t|
      t.string :api_key
    end
  end
end
