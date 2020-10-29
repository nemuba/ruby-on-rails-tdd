# frozen_string_literal: true

RSpec::Matchers.define :be_a_multiple_of do |expected|
  match do |actual|
    (actual % expected).zero?
  end

  description do |actual|
    "be that #{expected} a multiple of #{actual}"
  end
end

describe 18, 'Custom Matcher' do
  it { is_expected.to be_a_multiple_of(3) }
end
