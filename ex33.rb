check = (0..6)
puts "Check is: #{check}"

#cost = 2

def pushloop(check)
  numbers = []
  check.each do |i|
    puts "At the top i is #{i}"
    numbers << i
    puts "Numbers now: ", numbers
  end
  return numbers
end

endresult = pushloop(check)

puts "Our end result is #{endresult}."
    




#check = 6
#costs = 3
#puts "subtracting costs(#{costs}) from check(#{check})"
#check -= costs
#puts "check is now #{check}"

#tax = 2

#def pushloop(check, tax)
#  i = 0
#  numbers = []
#  while i < check
#    puts "At the top i is #{i}"
#    numbers.push(i)
#    
#    i += tax
#    puts "Numbers now: ", numbers
#    puts "At the bottom i is #{i}"
#  end
#  return numbers
#end

#numbers = pushloop(check, tax)

#puts "The numbers "
#numbers.each {|num| puts num}
  



#i = 0
#numbers = []

#while i < 6
#  puts "At the top i is #{i}"
#  numbers.push(i)
#  
#  i += 1
#  puts "Numbers now: ", numbers
#  puts "At the bottom i is #{i}"
#end

#puts "The numbers "

## remember you can write this 2 other ways?
#numbers.each {|num| puts num}


## writing in different ways
# numbers.each do |num|
#   puts num
# end

#puts "Another way"

#numbers.each do |num|
#  puts num
#end

#puts "Yet another way"

#for num in numbers
#  print num
#end

#puts "\nlast way."

#i = 0
#numbers = []

#(0...6).each do |i|
#  print "put #{i} at top.."
#  numbers.push(i)
#  
#  i += 1
#  print "Numbers now: ", numbers
#  print "Bottom i is #{i}.."
#end

#puts "The numbers "
#numbers.each {|num| print num}
#print "\n"
