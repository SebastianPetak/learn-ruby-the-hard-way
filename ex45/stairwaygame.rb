require './randomobstacle.rb'
require './scenes.rb'

class Engine
  # scene map is an instance of Map
  def initialize(scene_map)
    @scene_map = scene_map
  end
  
  def play
    # sets the first scene and creates a variable for the last scene.
    current_scene = @scene_map.opening_scene
    final_scene = @scene_map.next_scene('new_apartment')
    
    # The game loops until the current scene is the last scene of the game.
    while current_scene != final_scene
      next_scene_name = current_scene.enter
      current_scene = @scene_map.next_scene(next_scene_name)
    end
    
    current_scene.enter
  end
end

class Map
  @@scenes = {
    'first_floor'   => FirstFloor.new(),
    'second_floor'  => SecondFloor.new(),
    'third_floor'   => ThirdFloor.new(),
    'hallway'       => Hallway.new(),
    'new_apartment' => NewApartment.new()
  }
  
  # start_scene parameter passed in for the opening_scene method.
  def initialize(start_scene)
    @start_scene = start_scene
  end
  
  # next_scene will return an instance of the value in @@scenes.
  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end
  
  def opening_scene
    next_scene(@start_scene)
end

         
      
end

a_map = Map.new('first_floor')
a_game = Engine.new(a_map)
a_game.play
