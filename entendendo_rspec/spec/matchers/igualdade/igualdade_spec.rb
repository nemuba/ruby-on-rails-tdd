# frozen_string_literal: true

describe 'Matchers de Igualdade' do
  it '#equal - Verifica se objetos são iguais' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to equal(y)
  end

  it '#be - Verifica se objetos são iguais' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to be(y)
  end

  it '#eql - Verifica se os valores são iguais' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to eql(y)
  end

  it '#eq - Verifica se os valores são iguais' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to eq(y)
  end
end
