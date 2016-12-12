FactoryGirl.define do
  factory :address do
    primary_address "MyString"
    secondary_address "MyString"
    city "MyString"
    state "MyString"
    zipcode "MyString"
    influencer nil
  end
end
