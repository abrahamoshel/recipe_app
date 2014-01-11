class Technique < ActiveRecord::Base
  has_many :recipe_techniques
  has_many :recipes, through: :recipe_techniques
end
