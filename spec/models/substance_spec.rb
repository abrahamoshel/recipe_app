require 'spec_helper'

describe Substance do
  let(:substance) { build_stubbed(:with_substitutes) }
  it { should have_many(:ingredients) }
  it { should have_many(:recipes) }
  it { should have_many(:substitutes) }
  it 'should have substitutes' do
    expect(substance.substitutes.length).to eql(3)
  end
end
