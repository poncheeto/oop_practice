module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
  end
end

module Climbable
  def climb
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

class GoodDog < Animal
  include Swimmable
  include Climbable
end

puts "---GoodDog method lookup---"
puts GoodDog.ancestors