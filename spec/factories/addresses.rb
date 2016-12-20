# == Schema Information
#
# Table name: addresses
#
#  id                :integer          not null, primary key
#  primary_address   :string(255)
#  secondary_address :string(255)
#  city              :string(255)
#  state             :string(255)
#  zipcode           :string(255)
#  influencer_id     :integer
#  created_at        :datetime
#  updated_at        :datetime
#

FactoryGirl.define do
  factory :address do
    primary_address "MyString"
    secondary_address "MyString"
    city "MyString"
    state "MyString"
    zipcode "MyString"
    influencer nil
  end
end
