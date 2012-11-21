require 'spec_helper'

describe Marsellus::Matcher do
  subject { Marsellus::Matcher }
  it { should_not be_nil }

  it 'injects interface to target class' do
    'abc'.should_not respond_to :looks_like
    class SomeString < Marsellus::Matcher
      class_to_match String
    end
    'abc'.should respond_to :looks_like
    'abc'.should respond_to :looks_like_some_string?
    'abc'.looks_like_some_string?
    'abc'.looks_like :some_string
    'abc'.looks_like :some_string?
  end

end
