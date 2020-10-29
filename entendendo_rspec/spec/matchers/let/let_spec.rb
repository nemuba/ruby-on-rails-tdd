# frozen_string_literal: true

# Váriavel global
$contador = 0

describe 'Let and Let!' do
  let(:count) { $contador += 1 } # Ao executar valor é cacheado

  it { expect(count).to eq(1) }
  it { expect(count).to eq(2) }
  it { expect(count).to eq(3) }

  it 'Should eq 4' do
    expect(count).to eq(4)
    expect(count).to eq(4)
    expect(count).to eq(4)
  end
end
