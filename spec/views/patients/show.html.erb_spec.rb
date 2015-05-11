require 'rails_helper'

RSpec.describe "patients/show", :type => :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :name => "Name",
      :email => "Email",
      :address => "Address",
      :state => "State",
      :city => "City",
      :zip_code => "Zip_code",
      :district => "District",
      :number => "Number",
      :phone => "Phone",
      :cellphone => "Cellphone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Zip_code/)
    expect(rendered).to match(/District/)
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Cellphone/)
  end
end
