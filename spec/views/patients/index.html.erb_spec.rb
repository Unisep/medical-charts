require 'rails_helper'

RSpec.describe "patients/index", :type => :view do
  before(:each) do
    assign(:patients, [
      Patient.create!(
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
      ),
      Patient.create!(
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
      )
    ])
  end

  it "renders a list of patients" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Zip_code".to_s, :count => 2
    assert_select "tr>td", :text => "District".to_s, :count => 2
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Cellphone".to_s, :count => 2
  end
end
