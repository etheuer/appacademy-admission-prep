# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.


# ET Solution:
def reverse(string)
    reversed = ''
    
    left_index = 0
    right_index = string.length-1

    string.each_char do |i|
        reversed[left_index] = string[right_index]
        left_index += 1
        right_index -= 1
    end

    return reversed
end

=begin # Official solution:
def reverse(string)
    reversed = ''

    i=0
    while i < string.length
        reversed = string[i] + reversed
        i += 1
        puts reversed
    end

    return reversed
end
=end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

reverse('Theuer')

puts(
  'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
)
puts(
  'reverse("a") == "a": ' + (reverse("a") == "a").to_s
)
puts(
  'reverse("") == "": ' + (reverse("") == "").to_s
)