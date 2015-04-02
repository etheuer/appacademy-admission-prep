# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.


# My strategy:
# Itarate through array.
# Take item. Sum it to other items, iterating through them.
# Whenever a match to the criteria is found, return it
# Skip one index and repeat


def two_sum(nums)
    nums.each do |first_number|
    second_number_index = nums.index(first_number)+1
        
        while second_number_index < nums.length     
            sum = first_number + nums[second_number_index]
            #puts sum #check
            return [nums.index(first_number), second_number_index] if sum == 0
            second_number_index += 1
        end
    end
    
    return nil
end


=begin
# Official solution:

def two_sum(nums)
  idx1 = 0
  while idx1 < nums.length
    idx2 = idx1 + 1
    while idx2 < nums.length
      if nums[idx1] + nums[idx2] == 0
        return [idx1, idx2]
      end

      idx2 += 1
    end

    idx1 += 1
  end

  return nil
end



# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)
puts(
  'two_sum([-8, 8]) == [0, 1]: ' + (two_sum([-8, 8]) == [0, 1]).to_s
)
=end
