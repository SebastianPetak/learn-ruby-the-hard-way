first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

print "Where did #{first} come from?\n> "
first_from = gets.chomp
puts "#{first} is from #{first_from}"
