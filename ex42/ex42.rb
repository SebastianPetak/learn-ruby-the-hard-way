## Animal is-a object look at the extra credit
class Animal
  def sentient
    puts "This is a being"
  end
end

## Dog is-a Animal
class Dog < Animal

  def initialize(name)
    ## Dog has-a name
    @name = name
  end
  
end

## Cat is-a Animal
class Cat < Animal

  def initialize(name)
    ## Cat has-a name
    @name = name
  end
end

## Person is-a object
class Person

  def initialize(name)
    ## Person has-a name
    @name = name
    
    ## Person has-a pet of some kind
    @pet = nil
    
  end
  
  def rolecall(pets(x))
    all_pets = Array(pets(x))
    all_pets.each do |i|
      puts "Hi #{@name}, #{i} reporting for duty"
    end
  end
  
  def thumbs
    puts "I have thumbs"
  end
  
  attr_accessor :pet
end

## Employee is-a person
class Employee < Person
  def initialize(name, salary)
    # when you invoke super,
    # Ruby sends a message to the parent of the current object
    # the current object is Employee and the parent is Person
    
    # it asks it to invoke a method of tha same name as
    # the method invoking super (in this case, the method name is initialize)
    # the arguments that were passed to the method are automatically forwarded
    # here, the argument name is forwarded to the higher up method, Person initialized method
    super(name)
    ## Person has-a salary
    @salary = salary
  end
  
end

## Fish is-a object
class Fish
  def bark
    puts "BARK BARK BARK!!!"
  end
end

## Salmon is-a Fish
class Salmon < Fish
end

## Halibut is-a Fish
class Halibut < Fish
end

## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a cat
satan = Cat.new("Satan")

## mary is-a person
mary = Person.new("Mary")

## mary has-a pet satan
mary.pet = satan

## frank is-a employee, his name is Frank, and his salary is 120,000.
frank = Employee.new("Frank", 120000)
## frank has-a pet rover
frank.pet = rover

## flipper is-a Fish
flipper = Fish.new()

# crouse is-a Salmon
crouse = Salmon.new()

## harry is-a Halibut
harry = Halibut.new()

#billy = Salmon.new()
#todd = Salmon.new()
#terrance = Salmon.new()
#puts todd
#puts terrance
#puts billy
#john = Employee.new("John", 2)
#john.pet = [todd, terrance, billy]
#john.rolecall(john.pet)
mary.rolecall(mary.pet(@name))

satan.sentient()
harry.bark
frank.thumbs
