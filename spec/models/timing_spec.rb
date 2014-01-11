require 'spec_helper'

describe Timing do
    it { should belong_to(:recipe) }
  context 'validatons' do
    let(:timing) { Timing.new }

    it 'errors without kind' do
      expect(timing.errors_on(:kind)).to include("can't be blank")
    end
    it 'errors without quantity' do
      expect(timing.errors_on(:quantity)).to include("can't be blank")
    end
    it 'errors without measurement' do
      expect(timing.errors_on(:measurement)).to include("can't be blank")
    end
  end
end
