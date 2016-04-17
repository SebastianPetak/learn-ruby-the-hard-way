types_of_people = 10
x = "There are #{types_of_people} types of people." #embeded variable 1
binary = "binary"
do_not = "don't"
y = "Those who know #{binary} and those who #{do_not}." #embeded variable 2 and 3

puts x
puts y

puts "I said: #{x}." # embeded variable 4
puts "I also said: '#{y}'." # embeded variable 5

hilarious = false
joke_evaluation = "Isn't that joke so funny?! #{hilarious}" # embeded variable 6

puts joke_evaluation

w = "This is the left side of..."
e = "a string with a right side."

# adding two string variables together combines them in order as long as they don't contain fixnum
# you can change a fixnum to a string with .to_s
puts w + e + types_of_people.to_s
