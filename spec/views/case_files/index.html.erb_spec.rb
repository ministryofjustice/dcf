require 'rails_helper'

RSpec.describe "case_files/index", type: :view do
  before(:each) do
    assign(:case_files, [
      CaseFile.create!(),
      CaseFile.create!()
    ])
  end

  it "renders a list of case_files" do
    render
  end
end
