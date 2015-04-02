# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.
#
# Difficulty: easy.


=begin
# My solution:
# Strategy:
# - Create 2 indexes: one from left other from right
# - Check if values for indexes are the same
# - Iterate until number of iterations is >= lenght/2 (this is valid for both odd and even lengths). Return false and stop loop as soon as false is encountered
# - length = 1 is always true 


def palindrome?(string)
    return true if string.length == 1

    if string.length > 1
        index_left = 0
        index_right = -1
        max_iterations = string.length / 2

        i = 0
        while i < max_iterations
            if string[index_left] == string[index_right]
                index_left += 1
                index_right -= 1
                i += 1
                return true
            else
                return false
                break
            end 
        end
    end
end
=end

def palindrome?(string)
  i = 0
  while i < string.length
    if string[i] != string[(string.length - 1) - i]
      return false
    end

    i += 1
  end

  return true
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('palindrome?("abc") == false: ' + (palindrome?('abc') == false).to_s)
puts('palindrome?("abcba") == true: ' + (palindrome?('abcba') == true).to_s)
puts('palindrome?("z") == true: ' + (palindrome?('z') == true).to_s)
puts('palindrome?("2220222") == true: ' + (palindrome?('2220222') == true).to_s)
puts('palindrome?("2220212") == false: ' + (palindrome?('2220212') == false).to_s)