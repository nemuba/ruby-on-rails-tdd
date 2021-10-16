# frozen_string_literal: true

describe 'Test Double' do
  it 'double("User")' do
    user = double('User')
    allow(user).to receive(:name).and_return('Alef')
    expect(user).to have_attributes(name: a_string_starting_with('A'))
    expect(user.name).to be_kind_of(String)
  end
end
