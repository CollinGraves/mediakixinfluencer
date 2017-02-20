# == Schema Information
#
# Table name: platform_accounts
#
#  id                    :integer          not null, primary key
#  influencer_id         :integer
#  publishing_plaform_id :integer
#  account_type          :integer
#  created_at            :datetime
#  updated_at            :datetime
#

FactoryGirl.define do
  factory :platform_account do
    influencer
    publishing_plaform
  end
end
