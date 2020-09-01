require 'calculator'

describe Calculator do

  subject { Calculator.new } 

  it "#sum for 2 numbers positive" do
    expect(subject.sum(5,7)).to eq(12)
  end

  it "#sum for 2 numbers negative" do
    expect(subject.sum(-5,-7)).to eq(-12)
  end

  it "#subtact for 2 numbers positive" do
    expect(subject.subtract(3,2)).to eq(1)
  end

  it "#subtact for 2 numbers negative" do
    expect(subject.subtract(-3,-2)).to eq(-1)
  end

  it "#multiply for 2 numbers positive " do
    expect(subject.multiply(2,2)).to eq(4)
  end

  it "#multiply for 2 numbers negative " do
    expect(subject.multiply(-2,-2)).to eq(4)
  end

  it "#division for 2 numbers positive " do
    expect(subject.division(2,2)).to eq(1)
  end  

  it "#division for 2 numbers negative " do
    expect(subject.division(-2,-2)).to eq(1)
  end

  it "#division error divided by 0" do
    expect(subject.division(2,0)).to eq("Erro: divided by 0")
  end

end