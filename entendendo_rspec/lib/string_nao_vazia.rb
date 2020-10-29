# frozen_string_literal: true

class StringNaoVazia < String
  def initialize
    self << 'Não sou vazio'
  end
end
