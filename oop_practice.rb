class Dog
  def initialize(name)
    @name = name
  end

  def bark()
    puts "Ruff ruff"
  end
end

fido = Dog.new("Fido")
fido.bark