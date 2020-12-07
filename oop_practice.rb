class MyCar
  attr_accessor :speed

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model

    @speed = 0
  end

  def speed_up(accelerate)
    @speed += accelerate
    puts "Speed: #{speed}"
  end

end

