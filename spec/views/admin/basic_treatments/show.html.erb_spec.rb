require 'rails_helper'

RSpec.describe "admin/basic_treatments/show", :type => :view do
  before(:each) do
    @admin_basic_treatment = assign(:admin_basic_treatment, Admin::BasicTreatment.create!(
      :description => "Description",
      :common => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/false/)
  end
end
