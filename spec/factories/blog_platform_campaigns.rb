FactoryGirl.define do
  factory :blog_platform_campaign do
    campaign
    blog_publishing_platform

    clicks { Faker::Number.between(0,1000) }
    comments_count { Faker::Number.between(0,1000) }
    conversions { Faker::Number.positive }
    date_live { Faker::Date.backward(90) }
    facebook_shares { Faker::Number.between(0,1000) }
    twitter_shares { Faker::Number.between(0,1000) }
    pins_count { Faker::Number.between(0,1000) }
  end
end
