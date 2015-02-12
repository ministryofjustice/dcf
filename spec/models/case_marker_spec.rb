require 'rails_helper'

describe CaseMarker do
  
  describe '.new' do 
    it 'should allow creation of valid case markers' do
      cm = CaseMarker.new('AE')
      expect(cm.to_s).to eq 'AE'
    end

    it 'should raise if not a valid value' do
      expect {
        CaseMarker.new('XX')
      }.to raise_error DcfEnumError, 'XX is not a valid value for CaseMarker.'
    end
  end
end