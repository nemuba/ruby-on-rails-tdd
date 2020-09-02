require 'pessoa'

describe 'Matchers de Atributos de Classes' do
  subject { Pessoa.new } 

  it '#have_attributes' do
    subject.nome = "Alef" 
    subject.idade = 25 
    expect(subject).to have_attributes(:nome => a_string_starting_with("A"), :idade => a_value(25)) 
  end
end