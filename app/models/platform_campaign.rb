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

class PlatformCampaign < ActiveRecord::Base

  PLATFORMS = %w(
    blog
    facebook
    youtube
    instagram
    snapchat
    twitter
  )

  belongs_to :campaign
  belongs_to :brand
  belongs_to :publishing_platform

  before_save :set_brand

  private

  def set_brand
    self.brand_id ||= self.campaign.brand_id
  end
end
