puts "You enter a dark hallway. There are two doors.\nWill you go through door #1 or door #2?"
def prompt
  print "> "
end

prompt
door = $stdin.gets.chomp

if door == "1"
  puts "You encounter a super hottie."
  puts "1. Talk to the hottie"
  puts "2. Hide in the corner like a pleb"
  prompt
  hottie = $stdin.gets.chomp
  if hottie == "1"
    puts "It's good."
  else 
    puts "you suck."
  end
elsif door == "2"
  puts "There was a super hottie in the other room lol."
  puts "Nothin here gg"
else
  puts "wat"
end
