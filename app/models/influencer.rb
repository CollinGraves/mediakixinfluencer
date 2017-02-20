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

class Influencer < ActiveRecord::Base
  has_one :address

  has_many :platform_accounts
  has_many :publishing_platforms, through: :platform_accounts
end
