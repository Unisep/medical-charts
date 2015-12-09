require 'rails_helper'

RSpec.describe "Evolutions", :type => :request do
  describe "GET /evolutions" do
    it "works! (now write some real specs)" do
      get evolutions_path
      expect(response).to have_http_status(200)
    end
  end
end
