jack = "testing"
puts jack + "\n" + "-" * 10
def testu(jack)
  puts "#{jack} okay"
  return "good_job"
end
i = testu(jack)

puts "---\n" + i

count = ["hi", "hello", "yo"]

puts count.length

puts count[rand(0..count.length)]
