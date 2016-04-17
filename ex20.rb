input_file = ARGV.first # assigning argument variable input_file

def print_all(f) # function with argument f puts read of f
  puts f.read
end

def rewind(f) # function with argument f. we seek the 0 byte of the file we pass in and go there
  f.seek(0)
end

def print_a_line(line_count, f) # function with 2 arguments. puts argument 1 and the gets.chomp of argument 2
  puts "#{line_count}, #{f.gets.chomp}"
end

current_file = open(input_file) # variable current_file assigned to the open function of input_file

puts "First let's print the whole file:\n"

print_all(current_file) # uses the print_all function (puts f.read) upon current_file (open(input_file)

puts "Now let's rewind, kind of like a tape."

rewind(current_file) # rewind function (f.seek(0)) on current file (open(input_file))

puts "Let's print three lines: "

current_line = 1 # variable current_line = 1
print_a_line(current_line, current_file) #print_a_line passing in current_line and current_file as arguments, current line was set = 1

current_line += 1 # current_line = current_line(1) plus 1 so now 2
print_a_line(current_line, current_file) # print_a_line function with same arguements. will now be and read line2. Current line was set equal to current line(1) + 1 so it's 2.

current_line += 1 # current_line variable is now 3
print_a_line(current_line, current_file) # is and reads line 3. Current line was 2 and we + 1 so it's 3
