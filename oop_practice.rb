class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def to_s
    puts "Hey, there now! You did it!"
  end

end

bob = Person.new('Steve')
puts bob