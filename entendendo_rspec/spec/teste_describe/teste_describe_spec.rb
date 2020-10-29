# frozen_string_literal: true

describe [1, 2] do
  it 'Array' do
    expect(subject).to be_kind_of(Array)
  end
end

describe 'Alef' do
  it 'String' do
    expect(subject).to be_kind_of(String)
  end
end
