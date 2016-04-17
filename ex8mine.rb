#formatter = "%{first} %{second} %{third} %{fourth}"

#puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
#puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
#puts formatter % {first: true, second: false, third: true, fourth: false}
#puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

#puts formatter % {
#  first: "I had this thing.",
#  second: "That you could type up right.",
#  third: "But it didn't sing.",
#  fourth: "So I said goodnight."
#}

var = "%{a} %{b} %{c} %{d}"

puts var % {a: "Hello", b: "sup", c: "\nyo!", d: "yay"}

student_info = "Hello %{name}, I hope you had a fun school year at %{school}. Will you be attending %{camp} this summer? Let us know by %{date}."

puts student_info % {name: "John", school: "The University of Wisconsin Stevens Point", camp: "Camp Awesome", date: "July 14th"}
