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

class PlatformAccount < ActiveRecord::Base
  enum account_type: [ :personal, :manager ]

  belongs_to :influencer
  belongs_to :publishing_platform
end
