require 'rails_helper'


describe DcfEnum do
  
  it 'should not allow itself to be instantiated' do
    expect {
      DcfEnum.new('xyd')
    }.to raise_error DcfEnumError, 'DcfEnum cannot be instantiated; use a subclass of DcfEnum.'
  end
end