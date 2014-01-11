class Substitution < ActiveRecord::Base
  belongs_to :substance
  belongs_to :substitute, :class_name => 'Substance'
end
