require "rails_helper"

RSpec.describe Admin::BasicTreatmentsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/basic_treatments").to route_to("admin/basic_treatments#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/basic_treatments/new").to route_to("admin/basic_treatments#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/basic_treatments/1").to route_to("admin/basic_treatments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/basic_treatments/1/edit").to route_to("admin/basic_treatments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/basic_treatments").to route_to("admin/basic_treatments#create")
    end

    it "routes to #update" do
      expect(:put => "/admin/basic_treatments/1").to route_to("admin/basic_treatments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/basic_treatments/1").to route_to("admin/basic_treatments#destroy", :id => "1")
    end

  end
end
