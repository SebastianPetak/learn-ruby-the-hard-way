the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# this first kind of for-loop goes through a list
# in a more traditional syle found in other languages

#for number in the_count
#  puts "This is count #{number}"
#end

the_count.each do |number|
  puts "This is count #{number}"
end

the_count.each {|i| puts "I got %s" % i }

puts "This is the end of my tests"

# same as above, but in a more Ruby style
# this and the next one are the preferred
# way Ruby for-loops are written
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

#also we can go through mixed lists too
# note this is yet another style, exactly like above
# but a different syntax (way to write it).
change.each {|i| puts "I got #{i}" }

# we can also build lists, first start with an empty one
elements = []

# then use the range operator to do 0 to 5 counts
(0..5).each do |i|
  puts "adding #{i} to the list."
  # pushes the i variable on the *end* of the list
  elements.push(i)
end

elements.each {|i| puts "Element was: #{i}" }

elements = []

(0..5).each do |i|
  puts "adding #{i} to the list."
  elements << i
end

# now we can print them out too
elements.each {|i| puts "Element was: #{i}" }

elements = []

puts "Currently testing"

(0..3).each {|i| puts "adding #{i} to the list" ; elements << i }

elements.each {|i| puts "Elements was: %s" % i }

#hairs = ['brown', 'blond', 'red']
#eyes = ['brown', 'blue', 'green']
#weights = [1,2,3,4]
