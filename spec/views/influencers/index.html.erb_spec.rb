require 'rails_helper'

RSpec.describe "influencers/index", type: :view do
  before(:each) do
    assign(:influencers, [
      Influencer.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :phone => "Phone"
      ),
      Influencer.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of influencers" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
