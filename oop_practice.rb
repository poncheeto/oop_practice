class Person
  def initialize(age)
    @age = age
  end

  def age=(new_age)
    @age = new_age
  end

  def age
    @age
  end
end

poncho = Person.new(30)
p poncho.age
poncho.age = 21
p poncho.age
