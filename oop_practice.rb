class Celsius
  def initialize(temp)
    @temp = temp
  end

  def to_fahrenheit()
    puts (@temp * 1.8) + 32
  end
end