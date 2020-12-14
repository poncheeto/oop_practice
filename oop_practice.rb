class Student
  attr_accessor :name

  def initialize(n, g)
    @name = n
    @grade = g
  end

  def better_grade_than?()

  private

  def grade
    @grade
  end
end

poncho = Student.new("Poncho", 93)
p poncho.grade