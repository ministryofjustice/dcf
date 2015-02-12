require 'rails_helper'

RSpec.describe "case_files/new", type: :view do
  before(:each) do
    assign(:case_file, CaseFile.new())
  end

  it "renders new case_file form" do
    render

    assert_select "form[action=?][method=?]", case_files_path, "post" do
    end
  end
end
