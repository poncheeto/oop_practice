class Person
  MAX_HEALTH = 120

  def initialize(name, health, age, strength, dead)
    @name = name
    @age = age
    @health = health
    @strength = strength
    @dead = false
  end

  def heal
    self.health += 1 unless self.health + 1 > MAX_HEALTH
  end
end

class Viking < Person
  attr_accessor :name, :age, :health, :strength, :dead

  def initialize(name, health, age, strength, dead, weapon)
    super(name, health, age, strength, dead)
    @weapon = weapon
  end

  def self.create_warrior
    name = random_name
    age = rand * 20 + 15
    health = [age * 5, 120].min
    strength = [age / 2, 10].min
    weapon = random_weapon
    dead = dead
    Viking.new(name, health, age, strength, weapon, dead)
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
    if enemy.dead
      puts "#{enemy.name} is already dead!"
      return false
    end
    damage = (rand * 10 + 10).round(0)
    enemy.take_damage(damage)
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
  
  protected

  def take_damage(damage)
    self.health -= damage
    puts "Ouch! #{self.name} took #{damage} damage and has #{self.health} left"
    die if self.health <= 0
  end

  private

  def die
    puts "#{self.name} has been killed :("
    self.dead = true
  end
end

warrior = Viking.create_warrior
dead_guy = Viking.create_warrior
10.times { warrior.attack(dead_guy) }