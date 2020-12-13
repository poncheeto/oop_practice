module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  @@number_of_vehicles = 0
  

  def initialize
    @@number_of_vehicles += 1
    @current_speed = 0
  end

  def self.number_of_vehicles
    puts @@number_of_vehicles
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
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

truck = MyTruck.new
truck.speed_up(5)
truck.current_speed
truck.brake(5)
truck.current_speed
truck.shut_down