def sum_to(n)
  return nil if n <= 0
  return 1 if n == 1
  n + sum(n-1)
end

def add_numbers(arr)
  return arr[0] if arr.length <= 1
  arr[0] + add_numbers(arr[1..-1])
end

def gamma_fnc(n)
  return nil if n <= 0
  return 1 if n == 1

  (n - 1) * gamma_function(n - 1)
end

def ice_cream_shop(flavors, favorite)
  return true if favorite == flavors[0]
  return false if flavors.length <= 1

  ice_cream_shop(flavors[1 .. -1], favorite)
end

def reverse(str)
  return str if str.length <= 1
  str[-1] + reverse(str[0 .. -2])
end
