class Calculator
  # method sum
  def sum(a,b)
    a+b
  end

  # method subtract
  def subtract(a,b)
    a-b
  end

  # method multiply
  def multiply(a,b)
    a*b
  end

  # method division
  def division(a,b)
    begin
      return a/b
    rescue ZeroDivisionError => e
      "Erro: #{e.message}"
    end
  end
    
  
end
