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
