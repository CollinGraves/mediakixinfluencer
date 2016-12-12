require 'rails_helper'

RSpec.describe "platform_campaigns/index", type: :view do
  before(:each) do
    assign(:platform_campaigns, [
      PlatformCampaign.create!(
        :name => "Name",
        :contract_num => "Contract Num",
        :brand => nil
      ),
      PlatformCampaign.create!(
        :name => "Name",
        :contract_num => "Contract Num",
        :brand => nil
      )
    ])
  end

  it "renders a list of platform_campaigns" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contract Num".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
