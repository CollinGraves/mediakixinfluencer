# == Schema Information
#
# Table name: publishing_platforms
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  influencer_id    :integer
#  subscriber_count :integer
#  sponsorship_rate :integer
#  notes            :text
#  created_at       :datetime
#  updated_at       :datetime
#

require 'rails_helper'

RSpec.describe PublishingPlatform, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
