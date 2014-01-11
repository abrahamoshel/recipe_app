class Timing < ActiveRecord::Base
  belongs_to :recipe
  validates :kind, :quantity, :measurement, :presence => true

end
