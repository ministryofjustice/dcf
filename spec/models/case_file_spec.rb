# == Schema Information
#
# Table name: case_files
#
#  id           :integer          not null, primary key
#  event_date   :date
#  event_type   :string(255)
#  pti_urn      :string(255)
#  version      :integer
#  case_markers :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#


require 'rails_helper'

RSpec.describe CaseFile, type: :model do
  
  context 'event composition' do
    it 'should create an event object from event date and type' do
      cf = CaseFile.new( event_date: Date.today, event_type: 'CaseFile' )
      expect(cf.event).to be_instance_of(Event)
      expect(cf.event.date).to eq Date.today
      expect(cf.event.type).to eq 'CaseFile'
    end

    it 'should raise an error if the event date is in the future' do
      cf = CaseFile.new(event_date: 2.days.from_now, event_type: 'CaseFilexxx') 
      expect(cf).not_to be_valid
      expect(cf.errors[:event]).to eq ["Invalid Date", "Invalid Event Type"]
    end
  end



end
