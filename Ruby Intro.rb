# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum(arr)
  # YOUR CODE HERE
  sum(arr.max(2))
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  return false if arr.length < 2

  arr.each do |element|
    residual = n - element
    next unless arr.include?(residual)

    # in case exactly one item is half of the target, the residual method may not work
    return false if (residual == element) && (arr.count(element) == 1)

    return true
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
  return false if s.length.zero? || (s[0] !~ /[A-Za-z]/)

  !%w[A E I O U].include?(s[0].capitalize)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s =~ (/[^01]/) || s.length.zero?

  converted_int = s.to_i(base = 2)

  return true if (converted_int % 4).zero?

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
  attr_reader :isbn

  attr_reader :price

  # setter
  attr_writer :isbn

  attr_writer :price

  def price_as_string
    "$#{format('%.2f', @price)}"
  end

end
