require 'rails_helper'

RSpec.describe "case_files/edit", type: :view do
  before(:each) do
    @case_file = assign(:case_file, CaseFile.create!())
  end

  it "renders the edit case_file form" do
    render

    assert_select "form[action=?][method=?]", case_file_path(@case_file), "post" do
    end
  end
end
