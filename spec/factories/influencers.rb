# == Schema Information
#
# Table name: influencers
#
#  id                      :integer          not null, primary key
#  first_name              :string(255)
#  last_name               :string(255)
#  email                   :string(255)
#  phone                   :string(255)
#  created_at              :datetime
#  updated_at              :datetime
#  worked_with_mediatrix   :boolean
#  age                     :integer
#  gender                  :boolean
#  ethnicity               :integer
#  kids_age_range_list     :string(255)
#  pet_list                :string(255)
#  alcohol_brand_friendly  :boolean
#  vlogger                 :boolean
#  explicit_content        :boolean
#  brand_safe_content      :boolean
#  brand_exclusives        :text
#  fubr                    :boolean
#  cpa_compensation_basics :text
#  staff_pick              :boolean
#  licensing_included      :boolean
#  primary_language        :integer
#

FactoryGirl.define do
  factory :influencer do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.phone_number }
    age { Faker::Number.between(15, 70) }
    gender { Influencer::GENDERS.values.sample }
    ethnicity { Influencer.ethnicities.keys.sample }
    primary_language { Influencer.primary_languages.keys.sample }
    kids_age_range_list { Influencer::KIDS_AGE_RANGES.sample }
    pet_list { Influencer::PETS.sample }
    worked_with_mediatrix false
    alcohol_brand_friendly false
    vlogger false
    explicit_content false
    brand_safe_content false
    licensing_included false
    fubr false
    staff_pick false

    trait :with_address do
      address
    end
  end
end
