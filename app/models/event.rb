class Event

  EVENT_TYPES =  %w{ CaseFile }

  def initialize(date, type)
      @date = date
      @type = type
      validate
  end


  private

  def validate
    raise "Invalid Date" if @date > Date.today
    raise "Invalid Event Type" unless EVENT_TYPES.include?(@type)
  end

end