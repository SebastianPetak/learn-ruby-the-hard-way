class Card # not working yet

end
BEGIN { puts "Creating Deck..." }

suits = ["hearts", "spades", "clubs", "diamonds"]
# next time use types = %w{A 2 3 4 5 6 7 8 9 10 J Q K}
types = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]

deck = []

suits.each do |suit|
  types.each_with_index do |types,i|
    deck << Card.new( types, suit, i + 1 )  
  end
end

puts suits


