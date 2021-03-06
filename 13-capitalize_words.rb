# Write a method that takes in a string of lowercase letters and
# spaces, producing a new string that capitalizes the first letter of
# each word.
#
# You'll want to use the `split` and `join` methods. Also, the String
# method `upcase`, which converts a string to all upper case will be
# helpful.
#
# Difficulty: medium.

# My strategy:
# Create new string 
# Iterate over each letter of original string
#    If letter is index 0 or previous letter is a space: upcase. Add to new string.
#    Else: add to new string.
# Return new string



def capitalize_words(string)
    new_string = ''

    idx = 0
    while idx < string.length
        if idx == 0 or string[idx-1] == ' '
            new_string += string[idx].upcase
        else
            new_string += string[idx]
        end

    idx += 1
    end
    
    puts new_string #debug
    return new_string
end


=begin
# My solution 2 (imprvovement of official solution):

def capitalize_words(string)
    words = string.split(" ") 
    
    words.each do |word|
        word[0] = word[0].upcase
    end
    
    new_string = words.join(" ")
    puts new_string #debug
    return new_string
end

# Official solution:

def capitalize_words(string)
  words = string.split(" ")

  idx = 0
  while idx < words.length
    word = words[idx]

    word[0] = word[0].upcase

    idx += 1
  end

  return words.join(" ")
end
=end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'capitalize_words("this is a sentence") == "This Is A Sentence": ' +
  (capitalize_words("this is a sentence") == "This Is A Sentence").to_s
)
puts(
  'capitalize_words("mike bloomfield") == "Mike Bloomfield": ' +
  (capitalize_words("mike bloomfield") == "Mike Bloomfield").to_s
)