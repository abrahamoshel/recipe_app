class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :substance
  validates :name, :quantity, :measurement, :presence => true

  ## Previous Modeling from Mark S app
  # field :name, type: String
  # field :variety, type: String
  # field :preparation, type: String
  # belongs_to :recipe
  # belongs_to :measurement

  ## If I have a measurement model
  # field :unit, type: String #can we use Symbol instead
  # field :amount, type: Float
  # belongs_to :recipe
  # has_one :ingredient
end
