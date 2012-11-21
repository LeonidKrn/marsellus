require 'spec_helper'

describe Marsellus do
  specify { Marsellus.should_not be_nil }
  pending do
    it { should respond_to :configure }
  end
end
