class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.references :brand, index: true
      t.string :contract_num
      t.string :campaign_name

      t.timestamps
    end
  end
end
