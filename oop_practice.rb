class Student
  attr_accessor :name

  def initialize(n, g)
    @name = n
    @grade = g
  end

  def better_grade_than?(name)
    if grade > name.grade
      puts "Well done!"
    end
  end

  protected

  def grade
    @grade
  end
end

poncho = Student.new("Poncho", 93)
aubz = Student.new("Aubz", 75)
poncho.better_grade_than?(aubz)