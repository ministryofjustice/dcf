require 'rails_helper'

RSpec.describe "cases/show", type: :view do
  before(:each) do
    @case = assign(:case, Case.create!(
      :event_type => "Event Type",
      :pti_urn => "Pti Urn",
      :version => 1,
      :case_markers => "Case Markers"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Event Type/)
    expect(rendered).to match(/Pti Urn/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Case Markers/)
  end
end
