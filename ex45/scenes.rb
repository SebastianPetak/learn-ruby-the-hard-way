# Contains all locations in the game as subclasses of the Scenes class.
class Scenes
  # Most subclasses of Scenes utilize RandomObstacle class.
  include RandomObstacle
  
  # Place a simple line to show time has passed.
  def seperation
    puts "-" * 10
  end
  
  # Used when the player goes up some stairs
  def stairway
    puts '''
                                 ___
                             ___|
                         ___|
                     ___|
                 ___|
             ___|
         ___|
     ___|
    |
    '''
  end
end

class FirstFloor < Scenes
  def enter
    puts "\nYou are moving into your new apartment on the third floor."
    puts "You must acend the stairs with your couch."
    puts "You are determinded."
    seperation
    
    # with RandomObstacle generate an obstacle used in generate_event
    obstacle = generate_obstacle
    
    # Player must hit enter to continue. Allows time to read text.
    $stdin.gets
    
    # use location and obstacle to generate a random event in RandomObstacle.
    location = "first floor"
    generate_event(location, obstacle)
    
    return 'second_floor'
  end
end

class SecondFloor < Scenes
  def enter
    stairway
    puts "\nYou work your way up the stairs to the second floor."
    puts "The couch is heavy upon your back."
    seperation
    
    obstacle = generate_obstacle
 
    $stdin.gets
    
    location = "second floor"
    generate_event(location, obstacle)
    
    return 'third_floor'
  end
end

class ThirdFloor < Scenes
  def enter
    stairway
    puts "\nWoo! The third floor. Now we are on level ground."
    seperation
        
    obstacle = generate_obstacle
 
    $stdin.gets
    
    location = "third floor"
    generate_event(location, obstacle)
    
    return 'hallway'
  end
end

class Hallway < Scenes
  def enter
    puts '''
    ______________________________________________________
                            
             _________                   _________
            |         |                 |         |
            |         |                 |         |
            |    34   |                 |    35   |
            |         |                 |         |
            |       o |                 |       o |
            |         |                 |         |
            |         |                 |         |
    ________|_________|_________________|_________|_______
    '''
  
    puts "Okay, room number 35."
    seperation
       
    obstacle = generate_obstacle
 
    $stdin.gets
    
    location = "hallway"
    generate_event(location, obstacle)
    
    return 'new_apartment'
  end
end

class NewApartment 
  def enter
    puts "You have made it to your new apartment with your couch!"
  end
end
