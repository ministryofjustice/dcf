class Event

  EVENT_TYPES =  %w{ CaseFile }

  attr_reader :date, :type, :errors

  def initialize(date, type)
    @date = date
    @type = type
    @errors = []
    validate
  end

  def valid?
    @errors.empty?
  end

  private

  def validate
    return if @date.nil? && @type.nil?
    @errors << "Invalid Date" if @date > Date.today
    @errors << "Invalid Event Type" unless EVENT_TYPES.include?(@type)
  end

end