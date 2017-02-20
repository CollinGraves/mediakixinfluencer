FactoryGirl.define do
  factory :youtube_publishing_platform, parent: :publishing_platform do
    type "YoutubePublishingPlatform"
    url { Faker::Internet.url }
    subscriber_count { Faker::Number.between(0,1000) }
    avg_views { Faker::Number.between(0,1000) }
    rate_dedicated { Faker::Number.between(0,1000) }
    rate_integrated { Faker::Number.between(0,1000) }
  end
end
