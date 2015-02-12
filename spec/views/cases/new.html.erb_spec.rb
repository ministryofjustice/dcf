require 'rails_helper'

RSpec.describe "cases/new", type: :view do
  before(:each) do
    assign(:case, Case.new(
      :event_type => "MyString",
      :pti_urn => "MyString",
      :version => 1,
      :case_markers => "MyString"
    ))
  end

  it "renders new case form" do
    render

    assert_select "form[action=?][method=?]", cases_path, "post" do

      assert_select "input#case_event_type[name=?]", "case[event_type]"

      assert_select "input#case_pti_urn[name=?]", "case[pti_urn]"

      assert_select "input#case_version[name=?]", "case[version]"

      assert_select "input#case_case_markers[name=?]", "case[case_markers]"
    end
  end
end
