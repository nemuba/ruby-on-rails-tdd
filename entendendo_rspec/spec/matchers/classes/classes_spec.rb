require 'string_nao_vazia'

describe "Matchers de Classes" do
  subject { StringNaoVazia.new } 

  it 'be_instance_of' do
    expect(subject).to be_instance_of(StringNaoVazia) 
  end

  it 'be_kind_of' do
    expect(subject).to be_kind_of(String) 
  end

  it 'be_an' do
    expect(subject).to be_an(String) 
  end

  it 'be_a' do
    expect(subject).to be_a(StringNaoVazia) 
  end

  it 'respond_to' do
    expect(subject).to respond_to(:size)
  end
end
