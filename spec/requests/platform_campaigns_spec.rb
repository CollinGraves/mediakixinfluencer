require 'rails_helper'

RSpec.describe "PlatformCampaigns", type: :request do
  describe "GET /platform_campaigns" do
    it "works! (now write some real specs)" do
      get platform_campaigns_path
      expect(response).to have_http_status(200)
    end
  end
end
