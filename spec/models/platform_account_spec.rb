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

require 'rails_helper'

RSpec.describe PlatformAccount, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
