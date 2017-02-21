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

class Influencer < ActiveRecord::Base

  KIDS_AGE_RANGES = ['No kids', '18+', '14-18', '11-14', '5-111', '2-5', 'Infant']

  GENDERS = {
    'Male' => true,
    'Female' => false
  }

  PETS = ['Dogs', 'Cats', 'Bird', 'Other']

  enum primary_language: {
    english: 1,
    spanish: 2,
    chinese: 3,
    japanese: 4,
    russian: 5,
    portuguese: 6,
    french: 7,
    italian: 8,
    german: 9
  }

  enum ethnicity: {
    white: 1,
    black: 2,
    asian: 3,
    hispanic: 4,
    other: 5
  }

  has_one :address, dependent: :destroy

  has_many :platform_accounts, dependent: :destroy
  has_many :publishing_platforms, through: :platform_accounts
end
