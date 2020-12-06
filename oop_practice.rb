# good_dog.rb

module Speak
  def speak(sound)
    puts sound
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

sparky = GoodDog.new
sparky.speak("Arf!")
bob = HumanBeing.new
bob.speak("Hello!")

puts "---GoodDog ancestors---"
puts GoodDog.ancestors
puts ''
puts "---HumanBeing ancestors---"
puts HumanBeing.ancestors

# How to create object in Ruby
class Dog
end

mimi = Dog.new

# How to create a module and include it properly
module Speak
  def speak(sound)
    puts sound
  end
end

class Dog
  include Speak
end

mimi = Dog.new
mimi.speak("Yap")
