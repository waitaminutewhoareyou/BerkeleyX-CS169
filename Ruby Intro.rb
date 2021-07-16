# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  sum(arr.max(2))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length < 2
    return false
  end

  for element in arr do
    residual = n- element
    if arr.include?(residual)

      # in case exactly one item is half of the target, the residual method may not work
      if residual == element and arr.count(element)==1
        return false
      end

      return true
    end
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if (s.length == 0) or (not s[0] =~ /[A-Za-z]/)
    return false
  end

  not ["A", "E", "I", "O", "U"].include?(s[0].capitalize)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if not s !~ /[^01]/ or s.length == 0
    return false
  end

  converted_int = s.to_i(base=2)

  if converted_int % 4 ==0
    return true
  end
  false
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError if price <= 0 || isbn.empty?

    @isbn = isbn
    @price = price
  end

  # getter
  def isbn
    @isbn
  end

  def price
    @price
  end

  # setter
  def isbn=(isbn)
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end

  def price_as_string
    "$" + '%.2f' % (@price)
  end

end
