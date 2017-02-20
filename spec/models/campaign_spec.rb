# == Schema Information
#
# Table name: campaigns
#
#  id            :integer          not null, primary key
#  brand_id      :integer
#  contract_num  :string(255)
#  campaign_name :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

require 'rails_helper'

RSpec.describe Campaign, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
