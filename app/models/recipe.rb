class Recipe < ActiveRecord::Base
  has_many :ingredients
  has_many :directions
  has_many :timings
  has_many :recipe_techniques
  has_many :techniques, through: :recipe_techniques

  validates :name, :ingredients, :directions, :presence => true

  ## Old Recipe app modeling for recipe
  # field :name, type: String
  # field :description, type: String
  # has_many :ingredients
  # has_many :measurements
end
