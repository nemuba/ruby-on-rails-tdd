
describe "Matchers de Comparação" do
  it '#>' do
    expect(5).to be > 1 
  end

  it '#>=' do
    expect(5).to be >= 5 
  end

  it '#<' do
    expect(1).to be < 5 
  end
  
  it '#<=' do
    expect(5).to be <= 5 
  end

  it '#be_between - inclusive' do
    expect(10).to be_between(1,10).inclusive  
  end

  # it '#be_between - inclusive / Falhas agragadas' do # Config Global
  #   expect(11).to be_between(1,10).inclusive  
  #   expect(12).to be_between(1,10).inclusive  
  # end

  # it '#be_between - inclusive / Falhas agragadas', :aggregate_failures do
  #   expect(11).to be_between(1,10).inclusive  
  #   expect(12).to be_between(1,10).inclusive  
  # end

  it '#be_between - exclusive' do
    expect(10).not_to be_between(1,10).exclusive  
  end

  it '#match' do
    expect("nemubatubag@gmail.com").to match(/..@../) 
  end

  it '#start_with' do
    expect([1,2,3,4]).to start_with(1)
  end

  it '#end_with' do
    expect([1,2,3,4]).to end_with(4)
  end

end
