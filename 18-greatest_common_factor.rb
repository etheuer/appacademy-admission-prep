# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

# My strategy:
# Take the smallest number
# Divide by several numbers (starting by smallest of the 2 numbers, then decreasing by 1) to find factors. Whenecer a fator is found, check if number2 is dividable by it







def greatest_common_factor(number1, number2)

    if number1 < number2
        smallest = number1
        largest = number2
    elsif number2 < number1
        smallest = number2
        largest = number1
    else       
        puts 'Numbers must de different.'
    end   

    factor = smallest

    while factor > 0
        if largest % factor == 0 && smallest % factor == 0
            puts factor # debug
            return factor
        else
            factor -= 1
        end
    end


end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'greatest_common_factor(3, 9) == 3: ' +
  (greatest_common_factor(3, 9) == 3).to_s
)
puts(
  'greatest_common_factor(16, 24) == 8: ' +
  (greatest_common_factor(16, 24) == 8).to_s
)
puts(
  'greatest_common_factor(3, 5) == 1: ' +
  (greatest_common_factor(3, 5) == 1).to_s
)
puts(
  'greatest_common_factor(99, 99) == 99: ' +
  (greatest_common_factor(99, 99) == 99).to_s
)