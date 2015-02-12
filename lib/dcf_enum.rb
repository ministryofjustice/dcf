
class DcfEnumError < RuntimeError; end

class DcfEnum

  @@valid_values = []

  def initialize(value)
    raise DcfEnumError.new('DcfEnum cannot be instantiated; use a subclass of DcfEnum.') if self.class == DcfEnum 
    raise DcfEnumError.new("#{value} is not a valid value for #{self.class}.") unless @@valid_values.include?(value)
    @value = value
  end

  def to_s
    @value.to_s
  end
end