FactoryGirl.define do
  factory :twitter_publishing_platform, parent: :publishing_platform do
    followers_count { Faker::Number.between(0,1000) }
  end
end
