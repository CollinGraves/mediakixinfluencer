class Influencer < ActiveRecord::Base
  has_one :address
  has_many :publishing_platforms
end
