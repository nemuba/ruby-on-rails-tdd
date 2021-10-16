# frozen_string_literal: true

RSpec::Matchers.define_negated_matcher :exclude, :include

describe Array.new([1, 2, 3]), 'Array', type: 'collection' do
  it { expect(subject).to include(1, 2) }

  it { expect(subject).to exclude(4) }

  it '#contain exactly', slow: true do
    expect(subject).to contain_exactly(1, 2, 3)
  end

  it { expect(subject).to match_array([1, 2, 3]) }
end
