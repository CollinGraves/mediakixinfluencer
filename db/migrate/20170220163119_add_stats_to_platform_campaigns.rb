class AddStatsToPlatformCampaigns < ActiveRecord::Migration
  def change
    remove_column :platform_campaigns, :contract_num
    remove_column :platform_campaigns, :name

    add_reference :platform_campaigns, :campaign, index: true

    # Blog
    add_column :platform_campaigns, :type, :integer
    add_column :platform_campaigns, :clicks, :integer
    add_column :platform_campaigns, :comments_count, :integer
    add_column :platform_campaigns, :conversions, :integer
    add_column :platform_campaigns, :facebook_shares, :integer
    add_column :platform_campaigns, :twitter_shares, :integer
    add_column :platform_campaigns, :pins_count, :integer
    add_column :platform_campaigns, :date_live, :datetime

    # Youtube
    add_column :platform_campaigns, :num_views, :integer

    # Facebook
    add_column :platform_campaigns, :likes, :integer
    add_column :platform_campaigns, :shares, :integer

    # Instagram
    add_column :platform_campaigns, :num_posts, :integer
    add_column :platform_campaigns, :engagement, :integer

    # Snapchat
    add_column :platform_campaigns, :snaps, :integer
    add_column :platform_campaigns, :opens, :integer

    # Twitter
    add_column :platform_campaigns, :retweets, :integer
  end
end
