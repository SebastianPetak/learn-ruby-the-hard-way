people = 20
cats = 30
dogs = 15


if people < cats
  puts "Too many cats! The wold is doomed!"
end

if people > cats
  puts "not many cats! The world is saved!"
end

if people < dogs
  puts "The world is drooled on!"
end

if people > dogs
  puts "The wold is dry!"
end

dogs += 5

if people <= dogs
  puts "People are greater than or equal to dogs."
end

if people <= dogs
  puts "People are less than or equal to dogs."
end


if people == dogs
  puts "People are dogs."
end

if people == people || dogs == cats
  puts "We have summoned Satan!!!"
end

if cats > dogs && cats > people
  puts "I am tired of all the cats!"
  cats = 0
  puts "\nI have gotten rid of all the cats"
  puts "There are now: #{cats} Cats"
end

puts "People: #{people}, Dogs: #{dogs}, Cats: #{cats}."
