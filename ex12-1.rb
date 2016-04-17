print "How much money will you be giving?\n> "
money_given = gets.chomp
puts money_given
total_money = money_given.to_f
#  def percent_of(n)
#    self.to_f / n.to_f
#   end
ten_percent = total_money / 10.00
# ten_percent = total_money.percent_of(10.0)
puts "You have given $#{total_money}. A payment of $#{ten_percent} will be due next month."
