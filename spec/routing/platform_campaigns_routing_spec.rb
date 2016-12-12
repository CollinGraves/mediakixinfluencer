require "rails_helper"

RSpec.describe PlatformCampaignsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/platform_campaigns").to route_to("platform_campaigns#index")
    end

    it "routes to #new" do
      expect(:get => "/platform_campaigns/new").to route_to("platform_campaigns#new")
    end

    it "routes to #show" do
      expect(:get => "/platform_campaigns/1").to route_to("platform_campaigns#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/platform_campaigns/1/edit").to route_to("platform_campaigns#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/platform_campaigns").to route_to("platform_campaigns#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/platform_campaigns/1").to route_to("platform_campaigns#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/platform_campaigns/1").to route_to("platform_campaigns#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/platform_campaigns/1").to route_to("platform_campaigns#destroy", :id => "1")
    end

  end
end
