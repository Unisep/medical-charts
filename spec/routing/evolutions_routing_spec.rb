require "rails_helper"

RSpec.describe EvolutionsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/evolutions").to route_to("evolutions#index")
    end

    it "routes to #new" do
      expect(:get => "/evolutions/new").to route_to("evolutions#new")
    end

    it "routes to #show" do
      expect(:get => "/evolutions/1").to route_to("evolutions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/evolutions/1/edit").to route_to("evolutions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/evolutions").to route_to("evolutions#create")
    end

    it "routes to #update" do
      expect(:put => "/evolutions/1").to route_to("evolutions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/evolutions/1").to route_to("evolutions#destroy", :id => "1")
    end

  end
end
