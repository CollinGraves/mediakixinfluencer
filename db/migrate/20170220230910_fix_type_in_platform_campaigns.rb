class FixTypeInPlatformCampaigns < ActiveRecord::Migration
  def change
    change_column :platform_campaigns, :type, :string
  end
end
