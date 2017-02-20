FactoryGirl.define do
  factory :facebook_platform_campaign do
    campaign
    facebook_publishing_platform

    likes { Faker::Number.between(0,1000) }
    comments_count { Faker::Number.between(0,1000) }
    shares { Faker::Number.between(0,1000) }
  end
end
