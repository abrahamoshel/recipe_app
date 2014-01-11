class Recipe < ActiveRecord::Base
  has_many :ingredients
  has_many :directions
  has_many :timings

  validates :name, :ingredients, :directions, :presence => true
end

FactoryGirl.define do
  factory :recipe do
    name { Faker::DizzleIpsum.word }
    ingredients { FactoryGirl.build_list(:ingredient, 4) }
    directions { FactoryGirl.build_list(:direction, 4) }
  end
end
