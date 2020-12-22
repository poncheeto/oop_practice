class Waterbottle
  def initialize(size)
    @size = size
  end

  def size
    puts @size
  end
end

bottle = Waterbottle.new('32 oz')
bottle.size