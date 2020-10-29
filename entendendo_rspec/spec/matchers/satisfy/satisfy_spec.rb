# frozen_string_literal: true

describe 'Matchers satisfy' do
  it {
    expect(10).to satisfy('be a multiple of 2') do |x|
      x.modulo(2) == 0
    end
  }

  it { expect(10).to satisfy { |x| x.modulo(2) == 0 } }
end
