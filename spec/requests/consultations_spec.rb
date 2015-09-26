require 'rails_helper'

RSpec.describe "Consultations", :type => :request do
  describe "GET /consultations" do
    it "works! (now write some real specs)" do
      get consultations_path
      expect(response).to have_http_status(200)
    end
  end
end
