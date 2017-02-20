FactoryGirl.define do
  factory :instagram_publishing_platform, parent: :publishing_platform do
    handle { Faker::Lorem.word }
    followers_count { Faker::Number.between(0,1000) }
    engage_rate { Fake::Number.positive }
  end
end
