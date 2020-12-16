class Viking
  attr_accessor :name, :age, :health, :strength
  @@starting_health = 100

  def initialize(name, age, strength)
    @name = name
    @age = age
    @health = @@starting_health
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

  def sleep
    self.health += unless health >= 99
    end
  end
end

oleg = Viking.new("Oleg", 19, 100, 8)
p oleg.health
oleg.health = 80
p oleg.health