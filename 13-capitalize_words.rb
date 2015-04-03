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
#    If letter is index 0, upcase.
#    If letter has a letter at its rirgt, upcase. Exceptions: Never upcase last or spaces. 
#    Add to new string
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


# Official solution:
=begin
    


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