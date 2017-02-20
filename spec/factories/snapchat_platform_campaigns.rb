FactoryGirl.define do
  factory :snapchat_platform_campaign do
    campaign
    publishing_platform { snapchat_publishing_platform }

    snaps { Faker::Number.between(0,1000) }
    opens { Faker::Number.between(0,1000) }
    conversions { Faker::Number.positive }
  end
end
