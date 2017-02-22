# == Schema Information
#
# Table name: brands
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  slug       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Brand < ActiveRecord::Base
  has_and_belongs_to_many :categories
  has_many :campaigns, dependent: :destroy
  has_many :platform_campaigns, through: :campaigns

  accepts_nested_attributes_for :categories

  validates :name, presence: true

end
