require 'pessoa'

describe 'Matchers de Atributos de Classes' do
  before(:each) do
    @pessoa = Pessoa.new
    puts @pessoa.inspect
  end

  after(:each) do
    @pessoa.nome = "Sem Nome"
    puts @pessoa.inspect
  end

  it '#have_attributes' do
    @pessoa.nome = "Alef" 
    @pessoa.idade = 25 
    expect(@pessoa).to have_attributes(:nome => a_string_starting_with("A"), :idade => a_value(25)) 
  end

  it '#have_attributes' do
    @pessoa.nome = "Alex" 
    @pessoa.idade = 20 
    expect(@pessoa).to have_attributes(:nome => a_string_starting_with("A"), :idade => a_value(20)) 
  end
end