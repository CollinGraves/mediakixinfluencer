require 'rails_helper'

RSpec.describe "platform_campaigns/edit", type: :view do
  before(:each) do
    @platform_campaign = assign(:platform_campaign, PlatformCampaign.create!(
      :name => "MyString",
      :contract_num => "MyString",
      :brand => nil
    ))
  end

  it "renders the edit platform_campaign form" do
    render

    assert_select "form[action=?][method=?]", platform_campaign_path(@platform_campaign), "post" do

      assert_select "input#platform_campaign_name[name=?]", "platform_campaign[name]"

      assert_select "input#platform_campaign_contract_num[name=?]", "platform_campaign[contract_num]"

      assert_select "input#platform_campaign_brand_id[name=?]", "platform_campaign[brand_id]"
    end
  end
end
