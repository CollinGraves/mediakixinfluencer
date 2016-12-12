require 'rails_helper'

RSpec.describe "platform_campaigns/show", type: :view do
  before(:each) do
    @platform_campaign = assign(:platform_campaign, PlatformCampaign.create!(
      :name => "Name",
      :contract_num => "Contract Num",
      :brand => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Contract Num/)
    expect(rendered).to match(//)
  end
end
