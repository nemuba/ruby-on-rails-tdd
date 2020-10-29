# frozen_string_literal: true

describe 'Matchers Verdadeiro/False' do
  it 'be true' do
    expect(1.odd?).to be true
  end

  it 'be false' do
    expect(1.even?).to be false
  end

  it 'be_truthy' do
    expect(1.odd?).to be_truthy
  end

  it 'be_falsy' do
    expect(1.even?).to be_falsy
  end
end
