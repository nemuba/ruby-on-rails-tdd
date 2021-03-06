# frozen_string_literal: true

describe 'Matcher be_within' do
  it { expect(12.5).to be_within(0.5).of(12) }
  it { expect([11.6, 12.1, 12.5]).to all(be_within(0.5).of(12).and(be_an(Float))) }
end
