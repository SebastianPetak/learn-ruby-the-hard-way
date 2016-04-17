cars = 100
space_in_a_car = 4
drivers = 30
passengers = 90
cars_not_driven = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * space_in_a_car
average_passengers_per_car = passengers / cars_driven


puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "we can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."

# ex4.rb:14: undefined local variable or method 'carpool_capacity' for main:Object (NameError)
# This error means that on line 14 inside ex4.rb the method "carpool_capacity" is defined. 
# Check to see that you defined it before line 14, and that it is written correctly.
