require "./dict.rb"

# states is a database that will hold the key "#state name" and the value "#state abbreviation"
states = Dict.new()
Dict.set(states, 'Oregon', 'OR')
Dict.set(states, 'Wisconsin', 'WI')
Dict.set(states, 'Illinois', 'IL')
Dict.set(states, 'Florida', 'FL')
Dict.set(states, 'Indiana', 'IN')
Dict.set(states, 'Iowa', 'IA')

# cities is a database tht wil hold the key "#state abbreviation" and one city per state "#city"
cities = Dict.new()
Dict.set(cities, 'OR', 'Portland')
Dict.set(cities, 'WI', 'Milwaukee')
Dict.set(cities, 'IL', 'Chicago')
Dict.set(cities, 'FL', 'Miami')

Dict.set(cities, Dict.get(states, 'Indiana'), "Indianapolis")

print "\n***\nHere are the results...\n***\n\n"
Dict.list(states)
puts '-' * 10
Dict.list(cities)

# prompt user for what action to take
def prompt(states, cities)
  puts "Would you like to add a city, add a state, or list all cities and states?"
  puts "1. City\n2. State\n3. List cities and states\n4. No"
  print "\n>"
  response = $stdin.gets.chomp
  answer = response.downcase.strip
  if answer == "1"
    addcity(states, cities)
  elsif answer == "2"
    addstate(states, cities)
  elsif answer == "3"
    puts "Here are the states"
    Dict.list(states)
    puts "Here are the cities"
    Dict.list(cities)
    prompt(states, cities)
  elsif answer == "4"
    puts "Goodbye!"
    exit(0)
  else
    puts "Please type either 1, 2, or 3"
    prompt(states, cities)
  end
end

# add a city by providing the key "#state abbreviation" and the value "#city"
def addcity(states, cities)
  puts "What is the abbreviation of the state your city is located in?"
  print "\n>"
  stateabbrev = $stdin.gets.chomp
  puts "What is the name of the city you would like to add?"
  city = $stdin.gets.chomp
  Dict.set(cities, stateabbrev, city)
  if Dict.get(cities, stateabbrev)
    puts "#{city} located in #{stateabbrev} has successfully been added to the database"
    prompt(states, cities)
  else
    puts "Error: Your input has not been added"
    prompt(states, cities)
  end
end

# add a state by providing th key "#state" and the value "#state abbreviation"
def addstate(states, cities)
  puts "What is the name of your state?"
  print "\n>"
  name = $stdin.gets.chomp
  puts "What is the state's abbreviation?"
  stateabbrev = $stdin.gets.chomp
  Dict.set(states, name, stateabbrev)
  if Dict.get(states, name)
    puts "the state, #{name}, and it's abbreviation, #{stateabbrev}, have been added to the database"
    prompt(states, cities)
  else
    puts "Error: Your input has not been added."
    prompt(states, cities)
  end
end

prompt(states, cities)
