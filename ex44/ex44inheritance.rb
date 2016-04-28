class Parent
  def implicit()
    puts "PARENT implicit()"
  end
  
  def override()
    puts "PARENT override()"
  end
  
  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent
  # overrides Parent.override
  def override()
    puts "CHILD override()"
  end
  # overrides parent.altered and so runs Child.altered
  # super() gets the Parent class and returns Parent.altered
  # then Child.altered continues to print out he after message
  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super()
    puts "CHILD, AFTER PARENT altered()"
  end
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()

dad.override()
son.override()

dad.altered()
son.altered()

