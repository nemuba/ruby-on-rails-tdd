require 'calculator'

describe Calculator do

  context "#method - sum" do
    it "with 2 numbers positive" do
      expect(subject.sum(5,7)).to eq(12)
    end
  
    it "with 2 numbers negative" do
      expect(subject.sum(-5,-7)).to eq(-12)
    end
  end
  

  context "#method - subtract" do
    it "with 2 numbers positive" do
      expect(subject.subtract(3,2)).to eq(1)
    end
  
    it "with 2 numbers negative" do
      expect(subject.subtract(-3,-2)).to eq(-1)
    end
  end
  

  context "#method - multiply" do
    it "with 2 numbers positive " do
      expect(subject.multiply(2,2)).to eq(4)
    end
  
    it "with 2 numbers negative " do
      expect(subject.multiply(-2,-2)).to eq(4)
    end
  end
  

  context "#method - division" do
    it "with 2 numbers positive " do
      expect(subject.division(2,2)).to eq(1)
    end  
  
    it "with 2 numbers negative " do
      expect(subject.division(-2,-2)).to eq(1)
    end
  
    it "with error divided by 0" do
      expect(subject.division(2,0)).to eq("Erro: divided by 0")
    end
  end
  

end