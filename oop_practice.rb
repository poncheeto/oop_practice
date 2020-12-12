class Vehicle
  @@number_of_vehicles = 0

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def initialize
    @@number_of_vehicles += 1
  end

  def number_of_vehicles
    puts @@number_of_vehicles
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
end
