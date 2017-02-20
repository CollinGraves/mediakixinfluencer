# == Schema Information
#
# Table name: addresses
#
#  id                :integer          not null, primary key
#  primary_address   :string(255)
#  secondary_address :string(255)
#  city              :string(255)
#  state             :string(255)
#  zipcode           :string(255)
#  influencer_id     :integer
#  created_at        :datetime
#  updated_at        :datetime
#  country           :string(255)
#

require 'rails_helper'

RSpec.describe Address, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
