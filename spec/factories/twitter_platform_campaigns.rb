FactoryGirl.define do
  factory :twitter_platform_campaign do
    campaign
    twitter_publishing_platform

    likes { Faker::Number.between(0,1000) }
    retweets { Faker::Number.between(0,1000) }
  end
end
