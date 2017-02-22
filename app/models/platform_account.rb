# == Schema Information
#
# Table name: platform_accounts
#
#  id                     :integer          not null, primary key
#  influencer_id          :integer
#  publishing_platform_id :integer
#  account_type           :integer
#  created_at             :datetime
#  updated_at             :datetime
#

class PlatformAccount < ActiveRecord::Base
  enum account_type: {
    personal: 0,
    manager: 1
  }

  belongs_to :influencer
  belongs_to :publishing_platform

  validates :influencer_id, presence: true
  validates :publishing_platform_id, presence: true
end
