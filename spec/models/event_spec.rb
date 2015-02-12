require 'rails_helper'

describe Event do
  
  describe '.new' do
  
    it 'should create a new event with a valid date and type' do
      event = Event.new(2.days.ago, 'CaseFile')
      expect(event).to be_instance_of(Event)
      expect(event).to be_valid
    end

    it 'should raise an error if the date is in the future' do
      e = Event.new(2.days.from_now, 'CaseFile')
      expect(e).not_to be_valid
      expect(e.errors).to eq ['Invalid Date']
    end
    
    it 'should raise an error if the event type is invalid' do
      e = Event.new(Date.today, 'CaseFileXXX')
      expect(e).not_to be_valid
      expect(e.errors).to eq ['Invalid Event Type']
    end
  end
end