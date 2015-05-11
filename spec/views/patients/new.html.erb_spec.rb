require 'rails_helper'

RSpec.describe "patients/new", :type => :view do
  before(:each) do
    assign(:patient, Patient.new(
      :name => "MyString",
      :email => "MyString",
      :address => "MyString",
      :state => "MyString",
      :city => "MyString",
      :zip_code => "MyString",
      :district => "MyString",
      :number => "MyString",
      :phone => "MyString",
      :cellphone => "MyString"
    ))
  end

  it "renders new patient form" do
    render

    assert_select "form[action=?][method=?]", patients_path, "post" do

      assert_select "input#patient_name[name=?]", "patient[name]"

      assert_select "input#patient_email[name=?]", "patient[email]"

      assert_select "input#patient_address[name=?]", "patient[address]"

      assert_select "input#patient_state[name=?]", "patient[state]"

      assert_select "input#patient_city[name=?]", "patient[city]"

      assert_select "input#patient_zip_code[name=?]", "patient[zip_code]"

      assert_select "input#patient_district[name=?]", "patient[district]"

      assert_select "input#patient_number[name=?]", "patient[number]"

      assert_select "input#patient_phone[name=?]", "patient[phone]"

      assert_select "input#patient_cellphone[name=?]", "patient[cellphone]"
    end
  end
end
