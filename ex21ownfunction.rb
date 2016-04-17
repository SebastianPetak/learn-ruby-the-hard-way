def set_username
  print "Username: "
  username = $stdin.gets.chomp
  return username
end

Username = set_username

def set_password
  password = nil #perhaps this should be a random number for security reasons.
  confirm_pw = "nothing"
  until password == confirm_pw
  print "Password: "
  password = $stdin.gets.chomp
  print "Confirm Password: "
  confirm_pw = $stdin.gets.chomp
    unless password == confirm_pw
      print "Passwords do not match, Please retype your Password.\n"
    end
  end
  return password
end

Password = set_password
  
puts "\nYour Username is: #{Username}\nYour Password is: #{Password}.\n\n"
