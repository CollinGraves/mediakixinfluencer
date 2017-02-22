namespace :dev do

  task :seed_fake_data => :environment do
    require 'faker'
    require 'factory_girl'

    publishing_platforms_types = [
      :blog_publishing_platform,
      :youtube_publishing_platform,
      :facebook_publishing_platform,
      :instagram_publishing_platform,
      :snapchat_publishing_platform,
      :twitter_publishing_platform,
      :pinterest_publishing_platform
    ]

    platform_campaign_types = [
      :blog_platform_campaign,
      :youtube_platform_campaign,
      :facebook_platform_campaign,
      :instagram_platform_campaign,
      :snapchat_platform_campaign,
      :twitter_platform_campaign
    ]

    publishing_platforms = []

    influencers = FactoryGirl.create_list(:influencer, 20, :with_address)

    influencers.each do |influencer|
      publishing_platform = FactoryGirl.create(publishing_platforms_types.sample)
      publishing_platforms << publishing_platform
      FactoryGirl.create(
        :platform_account,
        influencer: influencer,
        publishing_platform: publishing_platform
      )
    end

    publishing_platforms.each do |publishing_platform|
      index = publishing_platforms_types.find_index {|pp| pp.to_s == publishing_platform.type.underscore }
      next unless index
      next unless platform_campaign_types[index]
      FactoryGirl.create(
        platform_campaign_types[index],
        publishing_platform: publishing_platform
      )
    end

  end

end

