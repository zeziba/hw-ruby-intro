# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # Take each element of the array and sum them together, must be integers
  sum = 0
  arr.map(&:to_i).each {|element| sum += element}
  sum
end

def max_2_sum arr
  # Find the two largest integers and sum them
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr.map(&:to_i)[0]
  else
    t_arr = arr.map(&:to_i).sort()
    t_arr[-2] + t_arr[-1]
  end
end

def sum_to_n? arr, n
  # Find if any two elements in the array sum to n
  arr.map(&:to_i).combination(2).any? do |a, b|
    a + b == n
  end
end

# Part 2

def hello(name)
  # Takes a string and returns "Hello, #name"
  "Hello, " + name.to_s
end

def starts_with_consonant? s
  # Check if the given string starts with a consonant
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # Take a string and check if it represents a binary number of a multiple of 4
  return true if s == "0"
  /^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
# Design a class which represents a book with an isbn number and the price of the book
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    raise ArgumentError,
      "Bad argument" if isbn.empty? or price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    sprintf("$%2.2f", @price)
  end
end
