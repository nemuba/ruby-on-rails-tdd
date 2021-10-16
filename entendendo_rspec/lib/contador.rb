# frozen_string_literal: true

class Contador
  @qtd = 0

  class << self
    attr_reader :qtd
  end

  def self.incrementar
    @qtd += 1
  end
end
