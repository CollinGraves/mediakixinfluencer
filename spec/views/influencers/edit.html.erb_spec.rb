require 'rails_helper'

RSpec.describe "influencers/edit", type: :view do
  before(:each) do
    @influencer = assign(:influencer, Influencer.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit influencer form" do
    render

    assert_select "form[action=?][method=?]", influencer_path(@influencer), "post" do

      assert_select "input#influencer_first_name[name=?]", "influencer[first_name]"

      assert_select "input#influencer_last_name[name=?]", "influencer[last_name]"

      assert_select "input#influencer_email[name=?]", "influencer[email]"

      assert_select "input#influencer_phone[name=?]", "influencer[phone]"
    end
  end
end
