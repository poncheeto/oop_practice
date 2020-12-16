class Viking
  attr_accessor :name, :age, :health, :strength

  def initialize(name, age, health, strength)
    @name = name
    @age = age
    @health = health
    @strength = strength
  end

  def attack(enemy)
    # code to fight
  end

  def take_damage(damage)
    self.health -= damage
    shout("OUCH!")
  end
  
  def shout(str)
    puts str
  end
end

oleg = Viking.new("Oleg", 19, 100, 8)
p oleg.health
oleg.health = 80
p oleg.health