# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.



# Option 1: using 'sort_by' method

# My strategy:
# - Split sentence into array containing words
# - Measure sentence of each item in array and save as new array
# - Find which item (index) is the largest
# - Show the item corresponding to the index


=begin
def longest_word(sentence)
	array = sentence.split(' ')

	array = array.sort_by { |i| i.length }

	array[-1]

end
=end

# Option 2: not using 'sort_by' method

# My strategy:
# - Split sentence into array containing words
# - Iterate though words and check if length is higher than previous


def longest_word(sentence)
    array = sentence.split(' ')	
    
    max_length = array[0].length
    longest_word = array[0]

    array.each do |i|
        if i.length >= max_length
            max_length = i.length 
            longest_word = i
            # puts "Longest word so far is #{longest_word}" # test
        end
    end

    return longest_word

end


# Official solution:

=begin
def longest_word(sentence)
  words = sentence.split(" ")

  longest_word = nil

  word_idx = 0
  while word_idx < words.length
    current_word = words[word_idx]

    if longest_word == nil
      longest_word = current_word
    elsif longest_word.length < current_word.length
      longest_word = current_word
    end

    word_idx += 1
  end

  return longest_word
end

=end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_word("short longest") == "longest": ' +
  (longest_word('short longest') == 'longest').to_s
)
puts(
  'longest_word("one") == "one": ' +
  (longest_word('one') == 'one').to_s
)
puts(
  'longest_word("abc hhhhhh def abcde") == "hhhhhh": ' +
  (longest_word('abc hhhhhh def abcde') == 'hhhhhh').to_s
)