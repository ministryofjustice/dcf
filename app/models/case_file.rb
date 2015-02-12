
class CaseFile < ActiveRecord::Base


  composed_of :event, class_name: "Event", mapping: [ %w(event_date date),  %w(event_type type) ]
  validate :event_validation


  private

  def event_validation
    unless event.valid?
      event.errors.each { |e| errors[:event] << e }
    end
  end
  
end
