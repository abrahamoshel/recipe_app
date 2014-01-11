class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :substance
  validates :name, :quantity, :measurement, :presence => true
end

FactoryGirl.define do
  factory :ingredient do
    name { Faker::DizzleIpsum.word }
    sequence(:quantity, 2) {|n| n * 2 }
    measurement 'cups'

    factory :with_substance do
      substance { FactoryGirl.build(:substance) }
    end
  end
end
