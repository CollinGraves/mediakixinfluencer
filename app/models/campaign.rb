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

class Campaign < ActiveRecord::Base
  belongs_to :brand
end
