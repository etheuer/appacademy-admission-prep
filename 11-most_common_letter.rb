# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.


# My solution:
# Split string into aray "letters"
# Create new array "counts" containing the count for each letter
# For each letter, iterate over "letters" array to count number of occurences
# Store number of occurences in "counts" array
# Iterate over items in "counts" array

def most_common_letter(string)
    letters = string.split('')
    letter_counts = []
    
    letters.each do |letter1|

        count = 0
        letters.each do |letter2|
            if letter2 == letter1
                count += 1
            end
        end

        letter_counts << count
    end

#    puts counts #debug

    idx = 0
    while idx < letter_counts.length
        if letter_counts[idx] > letter_counts[idx-1]
            result = [letters[idx], letter_counts[idx]]
        end
        idx += 1  
    end
       
    return result
end


# Official solution:
=begin
def most_common_letter(string)
  most_common_letter = nil
  most_common_letter_count = nil

  idx1 = 0
  while idx1 < string.length
    letter = string[idx1]
    count = 0

    idx2 = 0
    while idx2 < string.length
      if string[idx2] == letter
        count += 1
      end
      idx2 += 1
    end

    if (most_common_letter_count == nil) || (count > most_common_letter_count)
      most_common_letter = letter
      most_common_letter_count = count
    end

    idx1 += 1
  end

  return [most_common_letter, most_common_letter_count]
end



# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
=end