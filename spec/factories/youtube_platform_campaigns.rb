FactoryGirl.define do
  factory :youtube_platform_campaign do
    campaign
    youtube_publishing_platform

    clicks { Faker::Number.between(0,1000) }
    comments_count { Faker::Number.between(0,1000) }
    conversions { Faker::Number.positive }
    num_views { Faker::Number.between(0,1000) }
  end
end
