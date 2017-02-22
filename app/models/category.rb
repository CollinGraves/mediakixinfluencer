# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  label      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  parent_id  :integer
#

class Category < ActiveRecord::Base
  has_and_belongs_to_many :brands

  has_many :subcategories, class_name: "Category", foreign_key: "parent_id", dependent: :destroy
  belongs_to :parent_category, class_name: "Category", foreign_key: "parent_id"

  scope :top_level, -> { where(parent_id: nil) }
  scope :subcategories, -> { where.not(parent_id: nil) }

  delegate :label, to: :parent_category, prefix: true, allow_nil: true

end
