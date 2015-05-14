require 'rails_helper'

RSpec.describe "admin/basic_treatments/edit", :type => :view do
  before(:each) do
    @admin_basic_treatment = assign(:admin_basic_treatment, Admin::BasicTreatment.create!(
      :description => "MyString",
      :common => false
    ))
  end

  it "renders the edit admin_basic_treatment form" do
    render

    assert_select "form[action=?][method=?]", admin_basic_treatment_path(@admin_basic_treatment), "post" do

      assert_select "input#admin_basic_treatment_description[name=?]", "admin_basic_treatment[description]"

      assert_select "input#admin_basic_treatment_common[name=?]", "admin_basic_treatment[common]"
    end
  end
end
