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
#  country           :string(255)
#

FactoryGirl.define do
  factory :address do
    influencer

    primary_address { Faker::Address.street_address }
    secondary_address { Faker::Address.secondary_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    zipcode { Faker::Address.zip_code }
    country { Faker::Address.country }
  end
end
