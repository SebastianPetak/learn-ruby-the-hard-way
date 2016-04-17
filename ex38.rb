ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there are not 10 things in that list. Let's fix that."

stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

# using math to make sure there's 10 items

while stuff.length != 10
  next_one = more_stuff.pop # pop(more_stuff) 
  # call pop on more_stuff # call pop with argument more_stuff
  puts "Adding: #{next_one}"
  stuff.push(next_one) # push(next_one)
  # call push pushing next_one on stuff # call push pushing next_one with argument stuff
  puts "There are #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff [-1] #whoa! fancy
puts stuff.pop() # pop(stuff, ())
# call pop on stuff #call pop () with argument stuff
puts stuff.join(' ') # join(stuff, ' ')
puts stuff[3..5].join("#") #join(stuff, "#")
puts stuff.class #class(stuff)

