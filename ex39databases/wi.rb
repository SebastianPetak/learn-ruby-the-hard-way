require'./dict.rb'

include Test::Unit::Assertions

require 'rubygems'
require 'selenium-webdriver'
gem "test-unit"
require 'test/unit'

include Test::Unit::Assertions

# Create a mapping of counties to cities
wisconsin = Dict.new()
Dict.set(wisconsin, 'Dane', 'Madison')
Dict.set(wisconsin, "Fond du Lac", "Fond du Lac")

# puts the capital
puts '-' * 10
puts "Wisconsin's capital is #{Dict.get(wisconsin, 'Dane')}"
Dict.get(wisconsin,'Dane').assert("Madison", "This was expected to be Madison")

# puts every city in county
puts '-' * 10
Dict.list(wisconsin)

# default ruby says nil when something isn't there
puts '-' * 10
county = Dict.get(wisconsin, 'orange')

if !county
  puts "Sorry, no orange county."
end

# default values using ||= with the nil result
city = Dict.get(wisconsin, 'orange', 'Does Not Exist')
puts "The city for the county 'orange' is: #{city}"
