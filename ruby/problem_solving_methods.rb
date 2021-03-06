# RELEASE 0 - METHOD FOR SIMPLE SEARCH

def search_arr(arr ,item_to_search)
  arr_length = arr.length
  arr_index = 0
  item_index = nil
  while arr_index < arr_length && item_index == nil
    if arr[arr_index] == item_to_search
      item_index = arr_index
      break
    end
    arr_index += 1
  end
  item_index
end

#---- DRIVER CODE
puts "Release 0"
puts '--------------'
array = [1,2,3,4,5,6]
p search_arr(array, 3)
p '====================='


# RELEASE 1
# PLAN

# - input: num_of_terms
# - output: ARRAY of 'num_of_terms' fibonacci numbers
# - example: fib(6) = [0,1,1,2,3,5]


# -input how many items to put into the array
# - let fib_array = []
# - let fib_array_index = 0
# - until the num_of_terms inputted is equal to the length of the array
#   - if fib_array_index is equal to 0
#       feed a zero to the fib_array
#   - if fib_array_index is equal to 1
#       feed a one to the fib_array
#   - otherwise,
#       - let sum_prev_pair = fib_array at (fib_array_index - 1) + fib_array at (fib_array_index - 2)
#       - feed sum_prev_pair to the fib_array
#   - add a one to the fib_array_index


def sum_prev_pair(array, index)
  array[index -1] + array[index -2]
end

def fib(num_of_terms)
  fib_array = []
  fib_array_index = 0
  until num_of_terms == fib_array.length
    if fib_array_index == 0
      fib_array << 0
    elsif fib_array_index == 1
      fib_array << 1
    else
      fib_array << sum_prev_pair(fib_array, fib_array_index)
    end
    fib_array_index += 1
  end
  fib_array
end


# DRIVER CODE
puts 'Release 1'
puts '------------'
p fib(6)
test = fib(100).last == 218922995834555169026
puts 'Test Results:'
p test        

# RELEASE 2
# GOAL - USE BUBBLE SORTING ALGORITHM TO CREATE A SORTING METHOD WHICH SORTS AN ARRAY

# PLAN
# - define a sorting method called bub_sort
#   - let sort_length = the length of the array to sort(how many items it will sort)
#   - let arr_position = 0 (the first position)
#   - let next_position = arr_position + 1 (the neighbouring position)
#   - Until the sort_length is equal to 1 (meaning, no more items to sort)
#     - arr_position = 0 (this resets to the first position for each pass)
#     - While the next_position is less than the sort_length
#       - If array at arr_position is greater than the array at next_position
#       - Swap items
#       - add one to arr_position(to start over at the next pair)
#     - subtract one from the sort_length(the last one is in its final place, so it need not be sorted)

def bub_sort(array)
  sort_length = array.length
  until sort_length == 1
    arr_position = 0
    next_position = arr_position + 1
    array[arr_position]
    array[next_position]
    while next_position < sort_length
      if array[arr_position] > array[next_position]
        array[arr_position],array[next_position] = array[next_position],array[arr_position]
      end
      arr_position += 1
      next_position = arr_position + 1
    end
    sort_length = sort_length - 1
  end
  array
end


# DRIVER CODE
puts "============================"
puts "RELEASE 2"
test_array = [5,7,1,1,2,3,5,4,10,2,75,34]
p bub_sort(test_array)
