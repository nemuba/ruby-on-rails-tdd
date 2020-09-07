# Váriavel global

describe 'Let and Let!' do
  phrase = []

  let!(:count) do
    phrase << :let!
    count = 1
  end

  it 'Should eq [:let!, :exemplo]' do
    phrase << :exemplo
    expect(phrase).to eq([:let!, :exemplo])
  end
end