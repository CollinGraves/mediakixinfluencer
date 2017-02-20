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

require 'rails_helper'

RSpec.describe PlatformCampaign, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
