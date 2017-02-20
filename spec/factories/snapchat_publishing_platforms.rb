FactoryGirl.define do
  factory :snapchat_publishing_platform, parent: :publishing_platform do
    avg_opens { Faker::Number.between(0,1000) }
    avg_screenshots { Faker::Number.between(0,1000) }
  end
end
