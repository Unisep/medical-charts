require "rails_helper"

RSpec.describe ConsultationsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/consultations").to route_to("consultations#index")
    end

    it "routes to #new" do
      expect(:get => "/consultations/new").to route_to("consultations#new")
    end

    it "routes to #show" do
      expect(:get => "/consultations/1").to route_to("consultations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/consultations/1/edit").to route_to("consultations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/consultations").to route_to("consultations#create")
    end

    it "routes to #update" do
      expect(:put => "/consultations/1").to route_to("consultations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/consultations/1").to route_to("consultations#destroy", :id => "1")
    end

  end
end
