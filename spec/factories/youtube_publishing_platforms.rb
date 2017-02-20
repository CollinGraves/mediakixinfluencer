FactoryGirl.define do
  factory :youtube_publishing_platform, parent: :publishing_platform do
    url { Faker::Internet.url }
    subscriber_counts { Faker::Number.between(0,1000) }
    avg_views { Faker::Number.between(0,1000) }
    rate_dedicated { Faker::Number.between(0,1000) }
    rate_integrated { Faker::Number.between(0,1000) }
  end
end
