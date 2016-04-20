class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end
  
  def sing_me_a_song()
    @lyrics.each {|line| puts line}
  end
end

happy_bday = Song.new(["Happy birthday to you",
           "I don't want to get sued",
           "So I'll stop right there"])
           
bulls_on_parade = Song.new(["They rally around tha family",
            "With pockets full of shells"])
            
lifes_been_good = Song.new(["I have a mansion\, forget the price", "I've never been there tell\, tell me it's nice"])

# assigning 
thorogood_lyrics = ["Wanna tell you a story\, about the house-man blues", "I come home one Friday\, Had to tell the landlady I done lost my job"]

# using a hash to see what happens
bad_company = Song.new({"A company\, Always on the run" => "A destiny\, oh it's the rising sun"})

one_bourbon = Song.new(thorogood_lyrics)

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

lifes_been_good.sing_me_a_song()

one_bourbon.sing_me_a_song()

bad_company.sing_me_a_song()
