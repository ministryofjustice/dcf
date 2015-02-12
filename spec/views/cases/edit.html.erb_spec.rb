require 'rails_helper'

RSpec.describe "cases/edit", type: :view do
  before(:each) do
    @case = assign(:case, Case.create!(
      :event_type => "MyString",
      :pti_urn => "MyString",
      :version => 1,
      :case_markers => "MyString"
    ))
  end

  it "renders the edit case form" do
    render

    assert_select "form[action=?][method=?]", case_path(@case), "post" do

      assert_select "input#case_event_type[name=?]", "case[event_type]"

      assert_select "input#case_pti_urn[name=?]", "case[pti_urn]"

      assert_select "input#case_version[name=?]", "case[version]"

      assert_select "input#case_case_markers[name=?]", "case[case_markers]"
    end
  end
end
