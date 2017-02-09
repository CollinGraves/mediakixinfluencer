# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  label      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

FactoryGirl.define do
  factory :category do
    label "MyString"
  end
end
