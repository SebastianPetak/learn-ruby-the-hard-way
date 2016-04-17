#pancakes = 20

#puts "There are 20 pancakes, how many people are coming over?"
#prompt = "> "
#print prompt
#diners = $stdin.gets.chomp.to_i

#def pancakesleft(pancakes, diners)
#  eaten = diners * 2
#  puts "#{diners} people are coming over. #{eaten} pancakes will be eaten."
#  leftover = pancakes - eaten
#  if eaten > pancakes
#    puts "We don't have enough pancakes for that many people."
#    return "Not enough"
#  else
#    puts "There will be #{leftover} pancakes leftover."
#  end
#  
#end
#  
#pancakesleft(pancakes, diners)
  
  
  #force user to say "ni"
  
puts "What is the magic word?"
userinput = $stdin.gets.chomp.downcase


while userinput != "please"
  puts "ah ah ah, Whats the magic word?"
  userinput = $stdin.gets.chomp.downcase
end

puts "Access granted."
  
  
  
