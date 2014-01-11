require 'spec_helper'

describe Ingredient do
  it { should belong_to(:recipe) }
  it { should belong_to(:substance) }
  context 'invalid' do
    let(:ingredient) { Ingredient.new }
    it 'errors without name' do
      expect(ingredient.errors_on(:name)).to include("can't be blank")
    end
    it 'errors without quantity' do
      expect(ingredient.errors_on(:quantity)).to include("can't be blank")
    end
    it 'errors without measurement' do
      expect(ingredient.errors_on(:measurement)).to include("can't be blank")
    end
  end
  context 'valid' do
    let(:ingredient) { build_stubbed(:ingredient) }
    it 'returns as valid' do
      expect(ingredient).to be_valid
    end
  end
end
