#def initilize
#  drunk        = 0
#  fullness     = 0
#  time         = 0
#  work_out     = 0
#  showered     = 0
#  room_cleaned = false
#  check_cashed = false
#  
#  return drunk, fullness, time, work_out, showered, room_cleaned, check_cashed
#end

# initilization array values contains the values of 0 time, 1 drunk, 2 work_out, 3 fullness, 4 showered
# 5 check_cashed, 6 room_cleaned respectively
# values needs to be passed between each method in order for the methods to change their 
# respective elements of the array.

def initilize
  values = [0,0,0,0,0,false,false,]
  return values
end

values = initilize

#drunk, fullness, time, work_out, showered, room_cleaned, check_cashed = initilize

def start(values)
  puts """
  You have woken up with a small headache.  It's 4 o'clock in the afternoon,
and you have overslept after a hard night of partying.  You look around your
filthy room before realizing you only have a few hours to get ready for the club.
"""
$stdin.gets

prompt(values)
end

def prompt(values)
  selection = nil
  print "What do you want to do?\n\n"
  puts "1. \"It's time to pregame!\""
  puts "2. \"Pump some iron at the gym.\""
  puts "3. \"Eat noms.\""
  puts "4. \"Hit the shower.\"" 
  
  unless values[5] == true
    puts "5. \"Cash my check.\""
  end
  
  unless values[6] ==  true
    puts "6. \"Clean my lovepad.\""
  end
  
  print "> "
  selection = $stdin.gets.chomp
  
  if selection == "1"
    pre_game(values)
  elsif selection == "2"
    gym(values)
  elsif selection == "3"
    eat(values)
  elsif selection == "4"
    shower(values)
  elsif selection == "5" && values[5] == false
    cash_check(values)
  elsif selection == "6" && values[6] == false
    clean_room(values)
  elsif selection == "5" && values[5] == true
    print "\n>>> You have already cashed your check <<<\n\n"
    prompt(values)
  elsif selection == "6" && values[6] == true
    print "\n>>> You have already cleaned your lovepad. <<<\n\n"
    prompt(values)
  else 
    puts "\nWhat do you mean?\ntype a number and press enter."
    prompt(values)
  end

end

def time_check(values)
  if values[0] >= 5
    puts "\n\"Oh!\""
    sleep 0.5
    puts "\n\"Just look at the time!\""
    sleep 1
    print "\n\"I need to get to the club!\"\n\n"
    sleep 0.5
    print "Press Enter to go to the club: "
    $stdin.gets
    print "\n\n"
    fight(values)
  else
    values[0] += 1
    prompt(values)
  end
end

def cash_check(values)
  puts """
>>> \"Time to cash that check my Mom sent me!\"  You head to the bank and cash your check. <<<

"""
  $stdin.gets

  values[5] = true
  time_check(values)
end

def clean_room(values)
  puts """
>>> \"You clean the lovepad\" >>>

"""
  $stdin.gets
  values[6] = true
  time_check(values)
end

def gym(values)
  if values[2] == 0
    puts "\nIt's time to get da pump!"
    sleep 0.5
    puts "\n\tUH!"
    sleep 0.4
    puts "\n\tOH!"
    sleep 0.4
    puts "\n\tHEH!"
    sleep 0.4
    puts "\n\tHAH!"
    sleep 0.4
    puts "\n\tHOH!"
    sleep 0.7
    puts "\nGood workout brah..."
    
    $stdin.gets
  elsif values[2] > 0 && values[2] < 5
    puts "\nYou hit the gym again"
    sleep 0.5
    puts "\n\tTAKE IT GYM\n\n"
    $stdin.gets
  else 
    puts "\n\t rumble..."
    sleep 1.5
    puts "\n\t rumble rumble..."
    sleep 1.5
    puts "\n>>> A HUGE FIGURE EMERGES IN FRONT OF YOU <<<"
    sleep 2
    puts "\n>>> BRODIN HAS PLACED HIS BLESSING UPON YOU <<<"
    sleep 2
    puts "\n>>> YOU NOD AND ACCEPT HIS BLESSING AS YOUR MUSCLES SWELL TO PREPOSTEROUS PROPORTIONS <<<\n\n"
    sleep 1
  end
  
  values[2] += 1
  time_check(values)
end

def eat(values)
  if values[3] == 0
    puts "\nTime for some gains."
    puts "\n\tNom Nom Nom"
    $stdin.gets
  elsif values[3] > 0 && values[3] < 5
    puts "\n\t Nom Nom Nom"
    $stdin.gets
  else 
    puts "\nI don't think I can do it..."
    puts "*sob*"
    sleep 1
    print "nom..."
    sleep 0.8 
    print "nom..."
    sleep 0.8
    puts "nom..."
    sleep 0.8
    puts "*girgle* *girgle*"
    sleep 1
  end
  values[3] += 1
  time_check(values)
end

def pre_game(values)
  if values[1] == 0
    puts "\nHmm... Shots of..."
    sleep 1
    print "Gordon's"
    sleep 1
    print "... Oh well"
    sleep 1
    print "\nIt sucks to suck"
    $stdin.gets
  elsif values[1] > 0 && values[1] < 5
    puts "\nSHOTS"
    sleep 0.5
    puts "SHOTS"
    sleep 0.5
    print "SHOTS "
    sleep 0.3
    print "SHOTS "
    sleep 0.3
    print "SHOTS "
    sleep 0.3
    print "\n\n"
  else
    print "\n\"Oh"
    sleep 0.3
    print "h"
    sleep 0.3
    print "h"
    sleep 0.3
    print "h"
    sleep 0.3
    print "h"
    sleep 0.3
    print"man\""
    sleep 1
    puts "\n\"What was I doing again?!\""
    sleep 2 
    puts "*glug* *glug* *glug*"
    sleep 1
  end
  
  values[1] += 1
  time_check(values)
end

def shower(values)
  if values[4] == 0
    puts "\nYou hit the shower."
    puts "Such clean."
    puts "Much water."
    puts "Wow"
    puts "Amaze\n\n"
    $stdin.gets
  elsif values[4] > 0 && values[4] < 5
    puts "\nYou clean your body with that fresh lemon scent.\n\n"
    sleep 1
  else
    puts "\nAs you clean your body, your skin appears to glow."
    sleep 2
    puts "Your scent is that of 5 lemons"
    sleep 2
    puts "No one man should smell this good."
    sleep 2
  end
  
  values[4] += 1
  time_check(values)
end 
    
def fight(values)
  puts "You walk to the club."
  puts "At the club entrance you encounter Garry Oak."
  puts "\"Hey loser, lets duel.\"  Says Garry."
  $stdin.gets
  puts "\n\tWhat will you do?\n\n"
  puts "1. Fight him."
  puts "2. Ignore him and go into the club."
  puts "3. Roll your d20."
  selection = $stdin.gets.chomp
  if selection == "1"
    puts "\n\"Challenge accepted.\""
    puts "Garry manages to take one step towards you before you knock him on his ass"
    puts "*Drops mic*"
    $stdin.gets
    puts "You walk toward the club entrance."
    puts "Before you reach the doors you hear someone shouting."
    puts "You look behind you and see two officers running towards you."
    puts "They take you into custody and soon you are sitting in a jail cell for the night."
    $stdin.gets
    end_option(values)
  elsif selection == "2"
    club(values)
  elsif selection == "3"
    puts "\nYou wip out your d20 and flash a grin at Garry."
    puts "Garry looks startled."
    puts "You throw the die onto the pavement."
    $stdin.gets
    diceroll = rand(1..20)
    if diceroll >= 18
      print "\n#{diceroll}\n\n"
      puts "Garry explodes."
    elsif diceroll >= 13
      print "\n#{diceroll}\n\n"
      puts "Garry lunges at you."
      puts "You grapple him to the ground and subdue him."
      puts "Two officers are suddenly at your side."
      puts "\"We saw the whole thing. What a maniac!\""
      puts "Garry Oak is taken into custody."
    elsif diceroll >= 8
      print "\n#{diceroll}\n\n"
      puts "With lightning fast speed Garry releases a d20 of his own onto the pavement."
      puts "2"
      puts "\"Awww! You just lucked out!\"  says Garry with a dissapointed look."
      puts "He walks away."
    elsif diceroll >= 3
      print "\n#{diceroll}\n\n"
      puts "The people around stop what they are doing."
      puts "They look at you."
      puts "Garry Oak looks at you."
      puts "After a long pause Garry walks away.  \"Smell ya later freak!\""
    else
      print "\n#{diceroll}\n\n"
      puts "Garry smiles."
      puts "\"That doesn't look good.\""
      puts "You take a step forward and trip over a crack in the sidewalk."
      puts "You have blacked out..."
      $stdin.gets
      sleep 1
      puts "You start to open your eyes."
      sleep 2
      puts "They are heavy."
      sleep 1
      puts "You slowling get up onto your feet."
      sleep 1
      puts "You are still at the club entrance."
      sleep 1
      puts "It seems that only a few minutes have passed."
      sleep 1
      puts "Press Enter to go into the club."
    end
    $stdin.gets
    club(values) 
  else
  puts "That isn't a valid command. Pleae type in a number and press Enter."
  fight(values)
  end
end

def club(values)
# needs to be made
end

def end_option(values)
  puts "\n\nThe day is over what do you want to do from here?"
  puts "\n1. Do the same thing tomorrow."
  puts "2. Get a life."
  selection = $stdin.gets.chomp
  if selection == "1"
    print "\n\n"
    values = [0,0,0,0,0,false,false]
    start(values)
  elsif selection == "2"
    print "\n\n"
    exit(0)
  else
    puts "\nWhat do you mean?\ntype a number and press enter."
    end_option(values)
  end
end

start(values)
