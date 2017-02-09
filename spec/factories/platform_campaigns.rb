# == Schema Information
#
# Table name: platform_campaigns
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  contract_num :string(255)
#  brand_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

FactoryGirl.define do
  factory :platform_campaign do
    name "MyString"
    contract_num "MyString"
    brand nil
  end
end
