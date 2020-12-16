class Viking
  def initialize(name, age, health, strength)
    @name = name
    @age = age
    @health = health
    @strength = strength
  end
end

oleg = Viking.new("Oleg", 19, 100, 8)
p oleg