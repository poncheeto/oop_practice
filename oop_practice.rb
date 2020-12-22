module MathHelpers
  def exponent(a, b)
    a ** b
  end
end

class Calculator
  include MathHelpers

  def square_root(a)
    a.exponent(0.5)
  end