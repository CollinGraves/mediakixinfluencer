# == Schema Information
#
# Table name: influencers
#
#  id                         :integer          not null, primary key
#  first_name                 :string(255)
#  last_name                  :string(255)
#  email                      :string(255)
#  phone                      :string(255)
#  created_at                 :datetime
#  updated_at                 :datetime
#  worked_with_mediatrix      :boolean
#  age                        :integer
#  gender                     :boolean
#  ethnicity                  :integer
#  primary_languages          :string(255)
#  kids_age_range             :string(255)
#  pets                       :string(255)
#  alcohol_brand_friendly     :boolean
#  vlogger                    :boolean
#  explicit_content           :boolean
#  brand_safe_content         :boolean
#  licensing_included_boolean :string(255)
#  brand_exclusives           :text
#  fubr                       :boolean
#  cpa_compensation_basics    :text
#  staff_pick                 :boolean
#

FactoryGirl.define do
  factory :influencer do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.phone_number }
    age { Faker::Number.between(15, 70) }
    gender { Influencer::GENDERS[Faker::Demographic.sex] }
    ethnicity { Faker::Demographic.race }
    primary_language { Influencer.primary_languages.keys.sample }
    kids_age_range { Influencer::KIDS_AGE_RANGES.sample }
    pet_list { Influencer::PETS.sample }
    worked_with_mediatrix false
    alcohol_brand_friendly false
    vlogger false
    explicit_content false
    brand_safe_content false
    licensing_included false
    fubr false
    staff_pick false
  end
end
