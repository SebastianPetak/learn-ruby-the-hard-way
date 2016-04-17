print "What is your Username?\n> "
username = gets.chomp
print "What is your Password?\n> "
password = gets.chomp
print "How many showers do you take each day on average?\n> "
showersperday = gets.chomp.to_i
showersperyear = showersperday * 365
puts "You user name is #{username}, your password is #{password}, and you will take #{showersperyear} showers per year."
