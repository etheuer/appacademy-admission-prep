# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.


# My solution:
# Iterate through all numbers. If number is bigger that last, store on variable biggest_in_array
# At the end end the iteration, store biggest_in_array into new_array
# Repeat process 2 more times
# Select 3rd largest from new_array


def third_greatest(nums)

    three_largest = []
    i = 1

    while i <= 3
    
        largest_in_array = nums[0]
        idx = 1

        while idx < nums.length
             if nums[idx] > largest_in_array
                largest_in_array = nums[idx]            
            end
            idx += 1
        end
    
        three_largest << largest_in_array
        nums.delete(largest_in_array) 

        i += 1
    end

    #check:
    #puts three_largest

    return three_largest[2]

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)