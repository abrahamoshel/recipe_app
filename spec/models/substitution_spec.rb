require 'spec_helper'

describe Substitution do
  it { should belong_to(:substance) }
  it { should belong_to(:substitute) }
end
