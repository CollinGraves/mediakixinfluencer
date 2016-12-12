require "rails_helper"

RSpec.describe InfluencersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/influencers").to route_to("influencers#index")
    end

    it "routes to #new" do
      expect(:get => "/influencers/new").to route_to("influencers#new")
    end

    it "routes to #show" do
      expect(:get => "/influencers/1").to route_to("influencers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/influencers/1/edit").to route_to("influencers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/influencers").to route_to("influencers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/influencers/1").to route_to("influencers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/influencers/1").to route_to("influencers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/influencers/1").to route_to("influencers#destroy", :id => "1")
    end

  end
end
