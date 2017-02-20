FactoryGirl.define do
  factory :instagram_platform_campaign do
    campaign
    publishing_platform { instagram_publishing_platform }

    likes { Faker::Number.between(0,1000) }
    comments_count { Faker::Number.between(0,1000) }
    date_live { Faker::Date.backward(90) }
    num_posts { Faker::Number.between(0,1000) }
    engagement { Faker::Number.positive }
  end
end
