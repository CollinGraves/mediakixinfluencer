require 'rails_helper'

RSpec.describe "influencers/new", type: :view do
  before(:each) do
    assign(:influencer, Influencer.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders new influencer form" do
    render

    assert_select "form[action=?][method=?]", influencers_path, "post" do

      assert_select "input#influencer_first_name[name=?]", "influencer[first_name]"

      assert_select "input#influencer_last_name[name=?]", "influencer[last_name]"

      assert_select "input#influencer_email[name=?]", "influencer[email]"

      assert_select "input#influencer_phone[name=?]", "influencer[phone]"
    end
  end
end
