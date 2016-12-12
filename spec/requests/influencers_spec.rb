require 'rails_helper'

RSpec.describe "Influencers", type: :request do
  describe "GET /influencers" do
    it "works! (now write some real specs)" do
      get influencers_path
      expect(response).to have_http_status(200)
    end
  end
end
