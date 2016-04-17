confirmation = nil
until confirmation == "y"
  print "How much money do you have?\n> "
  user_money = gets.chomp
  total_money = user_money.to_f
  puts "You have $#{total_money}"
  print "What percent of that would you like to give us?\n> "
  user_percent = gets.chomp.to_f
  percent_given = user_percent / 100 * total_money
  puts "You will be giving $#{percent_given}."
  print "Would you like to confirm your order? Y or N\n> "
  user_confirmation = gets.chomp
  confirmation = user_confirmation.downcase
    if confirmation == "yes" then confirmation == "y" end
  
    if confirmation == "no" then confirmation == "n" end
    
    if confirmation == "y"
        puts "Thank you for giving $#{percent_given}."
    elsif confirmation == "n"
        print "Okay, lets start over.  "
    else 
        puts "\nY or N please.\n"
    end
end    

