require 'rails_helper'

RSpec.describe "Admin::BasicTreatments", :type => :request do
  describe "GET /admin_basic_treatments" do
    it "works! (now write some real specs)" do
      get admin_basic_treatments_path
      expect(response).to have_http_status(200)
    end
  end
end
