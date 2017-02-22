# == Schema Information
#
# Table name: publishing_platforms
#
#  id                     :integer          not null, primary key
#  subscriber_count       :integer
#  sponsorship_rate       :integer
#  notes                  :text
#  created_at             :datetime
#  updated_at             :datetime
#  type                   :string(255)
#  url                    :string(255)
#  monthly_posts          :integer
#  monthly_page_views     :integer
#  monthly_unique_visitor :integer
#  avg_views              :integer
#  rate_dedicated         :integer
#  rate_integrated        :integer
#  followers_count        :integer
#  handle                 :string(255)
#  engage_rate            :integer
#  avg_opens              :integer
#  avg_screenshots        :integer
#

class FacebookPublishingPlatform < PublishingPlatform

  def platform
    'facebook'
  end

  def self.information_fields
    []
  end

  def self.stats_fields
    %w( followers_count )
  end

end
