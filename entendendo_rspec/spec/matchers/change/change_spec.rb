require 'contador'

describe "Matcher change" do
  it { expect{ Contador.incrementar }.to change { Contador.qtd } }
  it { expect{ Contador.incrementar }.to change { Contador.qtd }.by(1) }
  it { expect{ Contador.incrementar }.to change { Contador.qtd }.from(2).to(3) }

end
