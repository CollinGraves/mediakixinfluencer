FactoryGirl.define do
  factory :pinterest_publishing_platform, parent: :publishing_platform do
    type "PinterestPublishingPlatform"
    followers_count { Faker::Number.between(0,1000) }
  end
end
