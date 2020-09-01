require 'string_nao_vazia'

describe String, 'class' do
  describe StringNaoVazia, 'class' do
    it 'Não sou vazio' do
      expect(subject).to eq("Não sou vazio") 
    end
  end
end
