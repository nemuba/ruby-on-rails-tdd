# frozen_string_literal: true

describe 'Predicados' do
  it 'be_odd' do
    expect(1).to be_odd
  end

  it 'be_even' do
    expect(12).to be_even
  end

  it 'be_nil' do
    expect(nil).to be_nil
  end

  it 'be_positive' do
    expect(1).to be_positive
  end

  it 'be_negative' do
    expect(-1).to be_negative
  end

  it 'be_zero' do
    expect(1 - 1).to be_zero
  end

  it 'be_nonzero' do
    expect(1 - 2).to be_nonzero
  end
end
