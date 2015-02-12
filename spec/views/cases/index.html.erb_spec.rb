require 'rails_helper'

RSpec.describe "cases/index", type: :view do
  before(:each) do
    assign(:cases, [
      Case.create!(
        :event_type => "Event Type",
        :pti_urn => "Pti Urn",
        :version => 1,
        :case_markers => "Case Markers"
      ),
      Case.create!(
        :event_type => "Event Type",
        :pti_urn => "Pti Urn",
        :version => 1,
        :case_markers => "Case Markers"
      )
    ])
  end

  it "renders a list of cases" do
    render
    assert_select "tr>td", :text => "Event Type".to_s, :count => 2
    assert_select "tr>td", :text => "Pti Urn".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Case Markers".to_s, :count => 2
  end
end
