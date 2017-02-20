# == Schema Information
#
# Table name: publishing_platforms
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  influencer_id    :integer
#  subscriber_count :integer
#  sponsorship_rate :integer
#  notes            :text
#  created_at       :datetime
#  updated_at       :datetime
#  type             :string(255)
#

FactoryGirl.define do
  factory :publishing_platform do
    name "MyString"
    influencer nil
    subscriber_count 1
    sponsorship_rate 1
    notes "MyText"
  end
end
