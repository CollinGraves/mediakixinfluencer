# == Schema Information
#
# Table name: campaigns
#
#  id            :integer          not null, primary key
#  brand_id      :integer
#  contract_num  :string(255)
#  campaign_name :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

FactoryGirl.define do
  factory :campaign do
    brand
    contract_num { Faker::Number.number(5) }
    name { Faker::Company.catch_phrase }
  end
end
