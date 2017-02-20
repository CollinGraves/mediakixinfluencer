FactoryGirl.define do
  factory :blog_publishing_platform, parent: :publishing_platform do
    type "BlogPublishingPlatform"
    url { Faker::Internet.url }
    monthly_posts { Faker::Number.between(0,1000) }
    monthly_page_views { Faker::Number.between(0,1000) }
    monthly_unique_visitor { Faker::Number.between(0,1000) }
  end
end
