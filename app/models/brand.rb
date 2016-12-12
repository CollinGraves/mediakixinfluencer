class Brand < ActiveRecord::Base
  has_and_belongs_to_many :categories
  has_many :platform_campaigns
end
