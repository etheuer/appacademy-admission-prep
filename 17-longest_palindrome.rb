# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
#
#     "abcd".slice(1, 2) == "bc"
#     "abcd".slice(1, 3) == "bcd"
#     "abcd".slice(2, 1) == "c"
#     "abcd".slice(2, 2) == "cd"
#
# Difficulty: hard.


# My solution:
# Overview: check severval subtring lengths, starting from full string length and ending at 2 letters
# At each run, start at string first letter and end when substring last letter matches sstring last letter
#
# Run 1 (length = 9):
#
#  a b d a b c b a c
# |-----------------|
#
# Run 2 (length = 8):
#
# Start:
#
#  a b d a b c b a c
# |---------------|
#
# End:
#
#  a b d a b c b a c
#   |---------------|
#
#
# Run 3 (length = 7):
#
# Start:
#
#  a b d a b c b a c
# |-------------|
#
# End:
#
#  a b d a b c b a c
#     |-------------|
#
# run until length = 2


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

def longest_palindrome(string)
  substring_length = string.length
  
  while substring_length >= 2

    puts "Checking substring_length = #{substring_length}" #debug

    idx_start = 0
    idx_end = idx_start + substring_length - 1

    while idx_end < string.length
      
      substring = string.slice(idx_start, substring_length)

      puts "Checking substring '#{substring}'" #debug

      if palindrome?(substring)
        puts substring #debug
        return substring
      end

      idx_start += 1
      idx_end += 1  
    end

    substring_length -= 1
  end

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_palindrome("abcbd") == "bcb": ' +
  (longest_palindrome('abcbd') == 'bcb').to_s
)
puts(
  'longest_palindrome("abba") == "abba": ' +
  (longest_palindrome('abba') == 'abba').to_s
)
puts(
  'longest_palindrome("abcbdeffe") == "effe": ' +
  (longest_palindrome('abcbdeffe') == 'effe').to_s
)