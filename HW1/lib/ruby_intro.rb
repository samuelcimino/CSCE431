# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  result = 0
  for i in arr
    result += i
  end
  return result
end

def max_2_sum arr
  if arr.empty?
    return 0
  end
  
  if arr.size == 1
    return arr[0]
  end
  
  sorted_arr = arr.sort
  reversed_arr = sorted_arr.reverse
  return reversed_arr[0] + reversed_arr[1]
  
end

def sum_to_n? arr, n
  i = 0
  iter_arr = arr
  
  while i < arr.size
    j = 0
    while j < iter_arr.size
	  if j != i					#So the same number does not get added together
	    if ((iter_arr[j] + arr[i]) == n)
	      return true
        end
	  end
	  j += 1
	end
	i += 1
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  first_letter = s[0].to_s
  first_letter.downcase!

  if first_letter.count("bcdfghjklmnpqrstvwxyz") == 0
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  #puts s.to_i(2)
  #puts "S: " + s + " Binary: " + s.to_i(2).to_s
  if s.count("^10") > 0 || s.length == 0
    return false
  end
  if s.to_i(2) % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  @@no_of_books=0
  def initialize(i, p)
    if i == ""
	  raise(ArgumentError, "ISBN is empty")
	end
	if p <= 0
	  raise(ArgumentError, "Price is negative")
	end
	
	@isbn = i
	@price = p
  end
  
  def isbn
    @isbn
  end

  def price
    @price
  end
  
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  def price=(new_price)
    @price = new_price
  end
  
  def price_as_string
    return "$" + sprintf("%.2f", @price).to_s
  end
end




