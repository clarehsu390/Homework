def sum_to(n)
  return 1 if n == 1
  return nil if n < 1
  n + sum_to(n-1)
end

def add_numbers(nums_array)
  return nums_array.last if nums_array.length <= 1
  return nil if nums_array.empty?
  nums_array.first + add_numbers(nums_array[1..-1])
end

def gamma_fnc(n)
  return 1 if n == 1
  return nil if n < 1
  (n-1) * gamma_fnc(n-1)
end

def ice_cream_shop(flavors, favorite)
  return flavors[0] == favorite if flavors.length <= 1
  if flavors[0] == favorite
    true
  else
  ice_cream_shop(flavors[1..-1], favorite)
  end
end

def reverse(string)
  return string if string.length <= 1
  string[-1] + reverse(string[0..-2])
end

def range(n1, n2)
  return [] if n1 > n2
  [n1] + range(n1+1, n2)
end

def fib_recursive(n)
  return [] if n == 0
  fib_arr = [0, 1, 1]
  return fib_arr[0...n] if n <= 3
  fib_arr = fib_recursive(n-1)
  fib_arr << fib_arr[-2] + fib_arr[-1]
end

def subsets(arr)
  return [[]] if arr.length == 0
  old_arr = subsets(arr[0...-1])
  old_arr + old_arr.map {|el| el + [arr.last]}
end

def permutations(arr)
  return arr if arr.length <= 1
  last = arr.shift
  permutations(last)
  final_permutations = []
  (1...arr.length).each do |i|
    (i...arr.length).each do |j|
    final_permutations << arr[0...i] + [last] + arr[i..j]
    end
  end
  final_permutations
end
