# == Schema Information
#
# Table name: influencers
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  email      :string(255)
#  phone      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

FactoryGirl.define do
  factory :influencer do
    first_name "MyString"
    last_name "MyString"
    email "MyString"
    phone "MyString"
  end
end
