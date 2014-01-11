class Direction < ActiveRecord::Base
  belongs_to :recipe
  validates :order, :instruction, :presence => true
end
