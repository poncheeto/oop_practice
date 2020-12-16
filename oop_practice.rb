class Person
  MAX_HEALTH = 120

  def initialize(name, health, age, strength)
    @name = name
    @age = age
    @health = health
    @strength = strength
  end

  def heal
    self.health += 1 unless self.health + 1 > MAX_HEALTH
  end
end

class Viking < Person
  attr_accessor :name, :age, :health, :strength

  def initialize(name, health, age, strength, weapon)
    super(name, health, age, strength)
    @weapon = weapon
  end

  def self.create_warrior
    name = random_name
    age = rand * 20 + 15
    health = [age * 5, 120].min
    strength = [age / 2, 10].min
    weapon = random_weapon
    Viking.new(name, health, age, strength, weapon)
  end

  def self.random_name
    ["Erik", "Lars", "Leif"].sample
  end

  def self.random_weapon
    ["sword", "axe", "mace", "broom handle"].sample
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
    # self.health = [self.health + 2, MAX_HEALTH].min
    # puts "Ready for battle!"

    2.times { super }
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

p Viking.create_warrior