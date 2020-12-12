module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  @@number_of_vehicles = 0

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def initialize
    @@number_of_vehicles += 1
  end

  def self.number_of_vehicles
    puts @@number_of_vehicles
  end
end

class MyCar < Vehicle
include Towable
  NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
include Towable

  NUMBER_OF_DOORS = 2
end

puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors