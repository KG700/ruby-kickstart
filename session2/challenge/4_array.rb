# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares

def get_squares(numbers)
    sorted_array = []
    numbers.each do |num1|
      numbers.each do |num2|
        if num1 * num1 == num2
          sorted_array.push(num1)
          break
        end
      end
    end
  sorted_array.sort
end
