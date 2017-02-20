class AddPublishingPlatformToPlatformCampaign < ActiveRecord::Migration
  def change
    add_reference :platform_campaigns, :publishing_platform, index: true
  end
end
