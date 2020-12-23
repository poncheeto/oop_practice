# variables

tree_name = "pine"
$car_name = "Peugeot"
@sea_name = "Black sea"

class Animal
  @@species = "Cat"
end

p local_variables
p global_variables.include? :$car_name
p self.instance_variables
p Animal.class_variables