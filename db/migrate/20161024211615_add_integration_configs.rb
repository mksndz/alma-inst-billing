class AddIntegrationConfigs < ActiveRecord::Migration
  def change
    create_table :integration_configs do |t|
      t.belongs_to :institution, index: true
      t.belongs_to :integration, index: true
      t.text :config
      t.timestamps
    end
  end
end
