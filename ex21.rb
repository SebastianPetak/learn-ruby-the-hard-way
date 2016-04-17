def add(a, b)
  puts "ADDING #{a} + #{b}"
  return a + b
end

def subtract(a,b)
  puts "SUBTRACTING #{a} - #{b}"
  return a - b
end

def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  return a * b
end

def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  return a / b
end


puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, weight: #{weight}, IQ: #{iq}"


#a puzzle for the extra credit, type it in anyway.
puts "Here is a puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}. Can you do it by hand?"

puts "Equating x..."
x = divide(iq, 2) ; x = multiply(weight, x) ; x = subtract(height, x) ; x = add(age, x)
puts " x = #{x}"

puts "Equating y..."
y = divide(iq, 2) ; puts "#{y} *= #{weight}" ; y *= weight ; y = subtract(height, y); puts "#{y} += #{age}" ; y += age
puts "y = #{y}"

puts "Lets try the inverse, writing a math problem then inputing our functions to solve the problem."
puts "We will solve this problem '(24 + 34) * (100 - 1023)'."
x = multiply(subtract(100,1023),add(24, 34))
puts "x = #{x}"

puts "Lets use variables so it's more like a formula."
money = 100
cost = 54
leftover = subtract(money, cost)
puts "This is how much is leftover: $#{leftover}."
