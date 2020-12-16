class Viking
  attr_accessor :name, :age, :health, :strength

  def initialize(name, health, age, strength)
    @name = name
    @age = age
    @health = health
    @strength = strength
  end

  def self.create_warrior(name)
    age = rand * 20 + 15
    health = [age * 5, 120].min
    strength = [age / 2, 10].min
    Viking.new(name, health, age, strength)
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

rolo = Viking.create_warrior("Rolo")
p rolo