class Pessoa
  attr_accessor :nome, :idade
  attr_reader :status

  def feliz!
    @status = 'Sentindo-se Feliz!'  
  end

  def triste!
    @status = 'Sentindo-se Triste!'  
  end

  def alegre!
    @status = 'Sentindo-se Alegre!'  
  end
  
end