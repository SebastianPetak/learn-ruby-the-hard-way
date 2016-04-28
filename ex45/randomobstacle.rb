# Used for generating all random features in the game.
module RandomObstacle
  # randomizes who you encounter
  def generate_obstacle
    random_number = rand(1..5)
    if random_number == 1
      obstacle = "a fat guy"
    elsif random_number == 2
      obstacle = "an old woman"
    elsif random_number == 3
      obstacle = "a woman and her newborn"
    elsif random_number == 4
      obstacle = "a man named Todd"
    else random_number == 5
      obstacle = "a hot girl"
    end
    return obstacle
  end
    
  # Randomizes what action you take against the obstacle.
  # There are 3 different outcomes for each scene (see scenes.rb).
  def generate_event(location, obstacle)
    random_number = rand(1..3)
    if location == "first floor"
    
      if random_number == 1
        puts "You shove #{obstacle} into the elevator."
        puts "Now there is more room on the stairway." 
      elsif random_number == 2
        puts "You wack #{obstacle} with your couch."
        puts "So strong!"  
      elsif random_number == 3
        puts "You tell #{obstacle} that the stairs are being waxed."
        puts "It seems to work."     
      end
      
    $stdin.gets
    
    elsif location == "second floor"
    
      if random_number == 1
        puts "You throw #{obstacle} down the stairs."
        puts "Now there is more room!"
      elsif random_number == 2
        puts "You trample over #{obstacle}."
        puts "Why are people in my way?"
      elsif random_number == 3
        puts "#{obstacle} has been removed from the equation."
      end
      
    $stdin.gets
    
    elsif location == "third floor"
    
      if random_number == 1
        puts "You throw #{obstacle} down the stairs."
        puts "It's a long way down!"
      elsif random_number == 2
        puts "You bash #{obstacle} on the head with your couch."
        puts "Not getting up."
      elsif random_number == 3
        puts "You smother #{obstacle} with a cushion from your couch."
        puts "That wasn't necessary."
      end
      
    $stdin.gets
    
    elsif location == "hallway"
    
      if random_number == 1
        puts "You smash #{obstacle} like a bug against the wall."
        puts "You will need to clean your couch."
      elsif random_number == 2
        puts "You tell #{obstacle} that the stairs are out of order..."
        puts "And so is the elevator..."
        puts "You help them use a window."
      elsif random_number == 3
        puts "You make loud grunting noises at #{obstacle}"
        puts "It sounds like you are having a hernia."
        puts "Okay, the hallway is clear."
      end
      
    $stdin.gets
    
    end
  end
end 
