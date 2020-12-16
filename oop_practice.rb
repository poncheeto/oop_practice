class Person
  MAX_HEALTH = 120
  
  def heal
    self.health += 1 unless self.health + 1 > MAX_HEALTH
  end
end

class Viking < Person
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

  def self.random_name
    ["Erik", "Lars", "Leif"].sample
  end

  def self.silver_to_gold(silver_pieces)
    silver_pieces / 10
  end

  class << self
    def gold_to_silver(gold_pieces)
      gold_pieces * 10
    end
  end

  def attack(enemy)
    # code to fight
  end

  def take_damage(damage)
    self.health -= damage
    shout("OUCH!")
  end
  
  def heal
    self.health = [self.health + 2, MAX_HEALTH].min
    puts "Ready for battle!"
  end
  
  def shout(str)
    puts str
  end

  def sleep
    self.health += unless health >= 99
    end
  end
end

rolo = Viking.create_warrior(Viking.random_name)
p rolo