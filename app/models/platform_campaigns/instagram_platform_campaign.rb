# == Schema Information
#
# Table name: platform_campaigns
#
#  id                     :integer          not null, primary key
#  brand_id               :integer
#  created_at             :datetime
#  updated_at             :datetime
#  campaign_id            :integer
#  type                   :string(255)
#  clicks                 :integer
#  comments_count         :integer
#  conversions            :integer
#  facebook_shares        :integer
#  twitter_shares         :integer
#  pins_count             :integer
#  date_live              :datetime
#  num_views              :integer
#  likes                  :integer
#  shares                 :integer
#  num_posts              :integer
#  engagement             :integer
#  snaps                  :integer
#  opens                  :integer
#  retweets               :integer
#  publishing_platform_id :integer
#

class InstagramPlatformCampaign < PlatformCampaign

  def platform
    'instagram'
  end

  def self.stats_fields
    %w(
      comments_count
      likes
      num_posts
      engagement
    )
  end

end
