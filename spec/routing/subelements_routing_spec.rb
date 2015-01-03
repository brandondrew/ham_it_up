require "rails_helper"

RSpec.describe SubelementsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/subelements").to route_to("subelements#index")
    end

    it "routes to #new" do
      expect(:get => "/subelements/new").to route_to("subelements#new")
    end

    it "routes to #show" do
      expect(:get => "/subelements/1").to route_to("subelements#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/subelements/1/edit").to route_to("subelements#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/subelements").to route_to("subelements#create")
    end

    it "routes to #update" do
      expect(:put => "/subelements/1").to route_to("subelements#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/subelements/1").to route_to("subelements#destroy", :id => "1")
    end

  end
end
