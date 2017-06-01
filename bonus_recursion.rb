#Problem 1: You have array of integers. Write a recursive solution to find the
#sum of the integers.
def sum_recur(array)
  return array[0] if array.length <= 1
  first = array.first
  first + sum_recur(array[0..-2])
end

#Problem 2: You have array of integers. Write a recursive solution to determine
#whether or not the array contains a specific value.

def includes?(array, target)
  return array[0] == target if array.length == 1
  return true if array[0] == target
  includes?(array[1..-1], target)

end

# Problem 3: You have an unsorted array of integers. Write a recursive solution
# to count the number of occurrences of a specific value.

def num_occur(array, target)
  return 0 if array.empty?
  counter = 1 if array[0] == target
  counter = 0 if array[0] != target
  counter + num_occur(array[1..-1], target)



end

# Problem 4: You have array of integers. Write a recursive solution to determine
# whether or not two adjacent elements of the array add to 12.

def add_to_twelve?(array)
  return array[0] == 12 if array.length == 1
  if array[0] + array[1] == 12
    return true
  else
    add_to_twelve?(array[1..-1])
  end
end

# Problem 5: You have array of integers. Write a recursive solution to determine
# if the array is sorted.

def sorted?(array)
  return true if array.length == 1
  if array[0] <= array[1]
    sorted?(array[1..-1])
  else
    false
  end
end

# Problem 6: Write a recursive function to reverse a string. Don't use any
# built-in #reverse methods!

def reverse(string)
  return "" if string.empty?
  new_str = ""
  new_str << string[-1]
  new_str + reverse(string[0..-2])
end
