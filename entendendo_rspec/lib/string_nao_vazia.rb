# frozen_string_literal: true

class StringNaoVazia < String
  def initialize
    super
    self << 'Não sou vazio'
  end
end
