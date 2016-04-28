require 'open-uri' # Allows you to open http like a file

WORD_URL = "http://learncodethehardway.org/words.txt" # Where the words are
WORDS = [] # Array where we will store the words from WORD_URL

# A hash of questions and answers.The #,@,\*, will be substitued with words
PHRASES = {
  "class ### < ###\nend" =>
      "Make a class named ### that is a ###.",
  "class ###\n\tdef initialize(@@@)\n\tend\nend" =>
      "class ### has-a initialize that takes @@@ parameters.",
  "class ###\n\tdef ***(@@@)\n\tend\nend" =>
      "class ### has-a function named *** that takes @@@ parameters.",
  "*** = ###.new()" =>
      "Set *** to an intsance of class ###.",
  "***.***(@@@)" =>
      "From *** get the *** function, and call it with parameters @@@.",
  "***.*** = '***'" =>
      "From *** get the *** attribute and set it to '***'."
}

# if english is passed in as ARGV then PHASE_FIRST true. If ARGV[0] isn't assigned a value,
# Any ARGV would make PHRASE_FIRST true.
PHRASE_FIRST = ARGV[0] ==  "english" # if english is passed in as ARGV then PHASE_FIRST exists.

# open WORD_URL and for each line push word.chomp to WORDS
open(WORD_URL) {|f|
  f.each_line {|word| WORDS.push(word.chomp)}
}

# function craft_names that takes rand_words, snippets, pattern, caps=false parameters.
def craft_names(rand_words, snippet, pattern, caps=false)
  # snippet.scan(pattern) returns a result array with matched strings
  #for example ["###", "###"]
  # for each element in the array, assign a word from rand_words
  # (remove the last word from rand_words and assign it to the element)
  names = snippet.scan(pattern).map do
    word = rand_words.pop()
    # if caps is true, capitalize the word, otherwise, leave as is.
    caps ? word.capitalize : word
  end
  # names is an array of names
  
  # return an array double the lenth with the values repeated
  # like such ["First", "Second"] * 2 --> ["First", "Second", "First", "Second"]
  return names * 2
end

# function craft_params that takes rand_words, snippets, pattern parameters
def craft_params(rand_words, snippet, pattern)
  # scan snippet for the pattern and get the length.
  # use the range operator to get (0...length), map that array
  names = (0...snippet.scan(pattern).length).map do
    # get a random parameter count between 1 and 3 (inclusive)
    param_count = rand(3) + 1
    # For however parameters there are, get random words
    params = (0...param_count).map {|x| rand_words.pop() }
    # join the random words together in a string
    params.join (', ')
  end
  
  # names would be an array of strings
  # for example a snippet scan that returns an array with length 2
  # could return something like ["apples, oranges", "bananas, strawberries, pears"]
  
  # return the names * 2, because we want to use the same parameter
  # names for both the snippet and the phrase
  return names * 2
end

# convert function takes snippet, phrase parameters
def convert (snippet, phrase)
  # sort the WORDS array randomly. rand_words is an array of the words in an random order
  rand_words = WORDS.sort_by {rand}
  # craft the class_names array
  class_names = craft_names(rand_words, snippet, /###/, caps=true)
  # craft the other_names array
  other_names = craft_names(rand_words, snippet, /\*\*\*/)
  # craft the param_names array
  param_names = craft_params(rand_words, snippet, /@@@/)
  
  results = []
  
  # "sentence": do snippet, then phrase
  [snippet, phrase].each do |sentence|
    # replace all /###/ (stand for class name) with the last element of class_names
    result = sentence.gsub(/###/) {|x| class_names.pop}
    
    # replace all /\*\*\*/ (stands for other names) with the last element of other_names
    result.gsub!(/\*\*\*/) {|x| other_names.pop }
    
    # replace all /@@@/ with the last element of param_names
    result.gsub!(/@@@/) {|x| param_names.pop}
    
    # push the new "sentence" (now with the words put in) to the results array
    results.push(result)
  end
    
  return results
end

# keep going until they hit CTRL-D
loop do
  # from PHRASES array, get keys
  # sort the array randomly and assign it to snippets
  snippets = PHRASES.keys().sort_by {rand}
  # snippets is now an array of keys in an random order
  
  # go through each snippet in snippets
  for snippet in snippets
    # assign phrase (value) is PHRASES[key]
    phrase = PHRASES[snippet]
    # convert the snippet and phrase. This is where the majority of our code is ran
    # assign the returned values to question and answer
    question, answer = convert(snippet, phrase)
    
    # If PHRASE_FIRST is true
    # reassign the values (switch the values)
    # so that the english phrase shows first, then the code(question)
    if PHRASE_FIRST
      question, answer = answer, question
    end
    
    # print the question
    print question, "\n\n> "
    
    # if the user enters input, do not exit
    # otherwise, exit the program
    exit(0) unless $stdin.gets
    
    # print the answer
    puts "\nANSWER: %s\n\n" % answer
  end
end
