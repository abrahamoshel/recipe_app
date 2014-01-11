class Substance < ActiveRecord::Base
  has_many :ingredients
  has_many :recipes, through: :ingredients

  has_many :substitutions
  has_many :substitutes, :through => :substitutions
  # description
  # substitutions
  # type #Technique, Ingredient
end
