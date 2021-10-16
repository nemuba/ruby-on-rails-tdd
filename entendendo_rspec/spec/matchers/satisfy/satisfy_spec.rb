# frozen_string_literal: true

describe 'Matchers satisfy' do
  it {
    expect(10).to satisfy('be a multiple of 2') do |x|
      x.modulo(2).zero?
    end
  }
end
