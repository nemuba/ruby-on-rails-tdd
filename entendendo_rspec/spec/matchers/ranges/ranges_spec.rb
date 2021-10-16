# frozen_string_literal: true

describe (1..5), 'Ranges' do
  it '#cover' do
    expect(subject).to cover(1, 2)
  end

  it { expect(subject).to cover(1) }
  it { is_expected.to cover(1, 2) }
end
