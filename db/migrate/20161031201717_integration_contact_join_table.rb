class IntegrationContactJoinTable < ActiveRecord::Migration
  def change
    create_join_table :integrations, :contacts do |t|
      t.index [:integration_id, :contact_id]
      t.index [:contact_id, :integration_id]
    end
  end
end
