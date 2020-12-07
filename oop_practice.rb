class MyCar
  attr_accessor :speed, :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model

    @speed = 0
  end

  def speed_up(accelerate)
    @speed += accelerate
    puts "Speed: #{speed} mph"
  end

  def slow_down(decelerate)
    @speed -= decelerate
    puts "Speed: #{speed} mph"
  end

  def engine_off
    @speed = 0
    puts "Car off"
  end
end

neon = MyCar.new(2013, "Red", "Mazda3")
p neon
neon.color = "White"
p neon.color