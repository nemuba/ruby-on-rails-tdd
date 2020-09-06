describe "Ruby on Rails" do
  it { is_expected.to start_with('Ruby').and end_with('Rails')  } 
  it { expect(languages).to eq('ruby').or eq('java').or eq('python') }
  it { expect(fruta).to eq('uva').or eq('manga').or eq('pera') }

  
end
