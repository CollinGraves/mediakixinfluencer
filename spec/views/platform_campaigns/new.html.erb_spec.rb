require 'rails_helper'

RSpec.describe "platform_campaigns/new", type: :view do
  before(:each) do
    assign(:platform_campaign, PlatformCampaign.new(
      :name => "MyString",
      :contract_num => "MyString",
      :brand => nil
    ))
  end

  it "renders new platform_campaign form" do
    render

    assert_select "form[action=?][method=?]", platform_campaigns_path, "post" do

      assert_select "input#platform_campaign_name[name=?]", "platform_campaign[name]"

      assert_select "input#platform_campaign_contract_num[name=?]", "platform_campaign[contract_num]"

      assert_select "input#platform_campaign_brand_id[name=?]", "platform_campaign[brand_id]"
    end
  end
end
