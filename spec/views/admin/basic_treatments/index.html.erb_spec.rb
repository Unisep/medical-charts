require 'rails_helper'

RSpec.describe "admin/basic_treatments/index", :type => :view do
  before(:each) do
    assign(:admin_basic_treatments, [
      Admin::BasicTreatment.create!(
        :description => "Description",
        :common => false
      ),
      Admin::BasicTreatment.create!(
        :description => "Description",
        :common => false
      )
    ])
  end

  it "renders a list of admin/basic_treatments" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
