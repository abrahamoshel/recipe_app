require 'spec_helper'

describe Recipe do
  it { should have_many(:ingredients) }
  it { should have_many(:directions) }
  it { should have_many(:timings) }

  context 'invalid' do
    let(:recipe) { Recipe.new }
    it 'errors without ingredients' do
      expect(recipe.errors_on(:ingredients)).to include("can't be blank")
    end
    it 'errors without ingredients' do
      expect(recipe.errors_on(:directions)).to include("can't be blank")
    end
    it 'errors without title' do
      expect(recipe.errors_on(:name)).to include("can't be blank")
    end
  end
  context 'valid' do
    let(:recipe) { build_stubbed(:recipe) }
    it 'returns as valid' do
      expect(recipe).to be_valid
    end
  end
end
