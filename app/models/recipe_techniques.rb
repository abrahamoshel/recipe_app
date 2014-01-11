class RecipeTechnique < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :technique
end
