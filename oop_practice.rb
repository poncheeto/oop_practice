module MathHelper
  def multiply_by_two(num)
    num * 2
  end
end

class Homework
  include MathHelper
end

math = Homework.new
p math.multiply_by_two(12)