class Viking
  def initialize(name, age, health, strength)
    @name = name
    @age = age
    @health = health
    @strength = strength
  end

  def attack(enemy)
    # code to fight
  end
end

oleg = Viking.new("Oleg", 19, 100, 8)
p oleg