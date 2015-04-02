# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.
#
# Difficulty: easy.

=begin # My Solution
def count_vowels(string)
    vowels = ['a', 'e', 'i', 'o', 'u']
    string = string.split('')

    num_vowels = 0

    string.each do |i|
        num_vowels +=1 if 
            i == 'a' or
            i == 'e' or
            i == 'i' or
            i == 'o' or  
            i == 'u'         
    end
        
    return num_vowels

end
=end

#=begin
def count_vowels(string)
    num_vowels = 0
    index = 0

    while index <= string.length - 1
        if string[index] == 'a' or string[index] == 'e' or string[index] == 'i' or string[index] == 'o' or string[index] == 'u'
            num_vowels += 1
        end

        index += 1
    end

    return num_vowels

end
#=end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('count_vowels("abcd") == 1: ' + (count_vowels('abcd') == 1).to_s)
puts('count_vowels("color") == 2: ' + (count_vowels('color') == 2).to_s)
puts('count_vowels("colour") == 3: ' + (count_vowels('colour') == 3).to_s)
puts('count_vowels("cecilia") == 4: ' + (count_vowels('cecilia') == 4).to_s)