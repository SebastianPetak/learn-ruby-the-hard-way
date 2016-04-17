BEGIN { puts "This is BEGIN." }

module Mod

  class MyClass
  
    CONST = "This is the constant I have inside my class, inside my module."
    
    def self.classfunction
      puts "This is my class function."
    end
  
  end
end

puts Mod::MyClass::CONST

def function
  puts "It's like a mini-script."
end

function

puts "now lets try the alias made method."

alias :method :function

method

#puts "now lets try with alias_method made command."

#alias_method :command :method

#command

if 4 === 4
  puts "4 is equal to 4"
end

unless 1 == 2
  puts "unless 1 = 2 puts this."
end 

puts Mod::MyClass::classfunction

class D < Mod::MyClass

#  undef classfunction ... Unable to undef a class function
  
end

if defined? D::classfunction
  puts Mod::MyClass::classfunction
else
  puts "Mod::MyClass::classfucntion doesn't exist."
end


(0..5).each do |i| ; if i == 2 ; next ; end ; puts "#{i}" ; end


END { puts "This is END." }

