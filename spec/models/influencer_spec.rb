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

require 'rails_helper'

RSpec.describe Influencer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
