describe "Ruby on Rails" do
  it { is_expected.to start_with('Ruby').and end_with('Rails')  } 
  it { expect(languages).to eq('ruby').or eq('java').or eq('python') }

  def languages
    %w(ruby java python).sample
  end
  
end
