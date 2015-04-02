# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.


# My solution:
# Create result string (empty)
# For each digit in original array: 
#    If even, just include digit into result array
#    if odd
#        if first, add dash after and store into result array
#        if latst, add dash befere and store into result array
#        else add dash before and after and store into result array 
# Return result array


def dasherize_number(num)
    num = num.to_s
    result = ''

    idx = 0
    while idx < num.length
        # No dash to be added: all even digits
        if num[idx].to_i % 2 == 0
            result += num[idx]
        
        # Is first
        elsif idx == 0
          result += num[idx] + '-'

        # Is last
        elsif idx == num.length-1
          result += '-' unless result[-1] == '-'
          result += num[idx] 
          
        # All others
        else
          result += '-' unless result[-1] == '-'
          result += num[idx] 
          result += '-'
        end 

        #puts result #debug
        idx += 1
    end

    #puts result #debug
    return result
end


# Official solution:







# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(403) == "40-3": ' +
  (dasherize_number(403) == '40-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(393) == "3-9-3": ' +
  (dasherize_number(393) == '3-9-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
