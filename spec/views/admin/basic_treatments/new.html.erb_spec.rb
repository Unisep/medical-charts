require 'rails_helper'

RSpec.describe "admin/basic_treatments/new", :type => :view do
  before(:each) do
    assign(:admin_basic_treatment, Admin::BasicTreatment.new(
      :description => "MyString",
      :common => false
    ))
  end

  it "renders new admin_basic_treatment form" do
    render

    assert_select "form[action=?][method=?]", admin_basic_treatments_path, "post" do

      assert_select "input#admin_basic_treatment_description[name=?]", "admin_basic_treatment[description]"

      assert_select "input#admin_basic_treatment_common[name=?]", "admin_basic_treatment[common]"
    end
  end
end
