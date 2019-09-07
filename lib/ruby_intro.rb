# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0, :+)
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr.sort!
    return arr[-1] + arr[-2]
  end
end

def sum_to_n? arr, n
  if arr.length == 0 || arr.length == 1
    return false
  else
    pairs = {}
    for i in 0..arr.length-1 do
      if pairs.has_value?(arr[i])
        return true
      end
      pairs[i] = n - arr[i]
    end
    return false
  end
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  if s.length == 0
    return false
  else
    return /^[^aeiou\W]/i.match(s) != nil
  end
end

def binary_multiple_of_4? s
  return /^[10]*00$/i.match(s) || s == "0"
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError.new(
      "ISBN is empty."
    ) if isbn.length == 0
    raise ArgumentError.new(
      "Price is not positive."
    ) if price <= 0
    @isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price
    @price
  end

  def price=(price)
    @price = price
  end

  def price_as_string()
    return "$%0.2f" % [@price]
  end
end
