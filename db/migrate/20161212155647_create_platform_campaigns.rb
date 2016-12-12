class CreatePlatformCampaigns < ActiveRecord::Migration
  def change
    create_table :platform_campaigns do |t|
      t.string :name
      t.string :contract_num
      t.references :brand, index: true

      t.timestamps
    end
  end
end
