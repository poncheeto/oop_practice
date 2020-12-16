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

  def health
    @health
  end

  def health=(new_health)
    @health = new_health
  end
end

oleg = Viking.new("Oleg", 19, 100, 8)
p oleg.health
oleg.health = 80
p oleg.health