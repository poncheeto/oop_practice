class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def full_name
    puts (first_name + last_name)
  end

end

loncho_piles = Person.new("Loncho", "Piles")
loncho_piles.full_name