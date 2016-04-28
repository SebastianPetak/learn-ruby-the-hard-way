module Other

  def override()
    puts "OTHER override()"
  end
  
  def implicit()
    puts "OTHER implicit()"
  end
  
  def Other.altered()
    puts "OTHER altered()"
  end
end

class Child
  include Other
  
  def override()
    puts "CHILD override()"
  end
  
  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    # can't use super() as Child isn't inheriting Other.
    # We need to "from Other get altered and call it.
    Other.altered()
    puts "CHILD< AFTER OTHER altered()"
  end
end

son = Child.new()

son.implicit()
son.override()
son.altered()
