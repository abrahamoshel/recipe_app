require 'spec_helper'

describe Direction do
  it { should belong_to(:recipe) }
  context 'invalid' do
    let(:direction) { Direction.new }
    it 'errors without order' do
      expect(direction.errors_on(:order)).to include("can't be blank")
    end
    it 'errors without instruction' do
      expect(direction.errors_on(:instruction)).to include("can't be blank")
    end
  end
  context 'valid' do
    let(:direction) { build_stubbed(:direction) }
    it 'returns as valid' do
      expect(direction).to be_valid
    end
  end
end
