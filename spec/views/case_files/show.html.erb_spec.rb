require 'rails_helper'

RSpec.describe "case_files/show", type: :view do
  before(:each) do
    @case_file = assign(:case_file, CaseFile.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
