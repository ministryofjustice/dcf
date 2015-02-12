require 'rails_helper'

describe Event do
  
  describe '.new' do
  
    it 'should create a new event with a valid date and type' do
      event = Event.new(2.days.ago, 'CaseFile')
      expect(event).to be_instance_of(Event)
    end

    it 'should raise an error if the date is in the future' do
      expect {
        Event.new(2.days.from_now, 'CaseFile')
      }.to raise_error RuntimeError, 'Invalid Date'
    end
    
    it 'should raise an error if the event type is invalid' do
      expect {
        Event.new(Date.today, 'CaseFileXXX')
      }.to raise_error RuntimeError, 'Invalid Event Type'
    end
  end
end