# == Schema Information
#
# Table name: platform_campaigns
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  contract_num :string(255)
#  brand_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

require 'rails_helper'

RSpec.describe PlatformCampaign, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
