# When done, submit this entire file to the autograder.

#### Part 1
#Part 1:1
def sum arr
  arr.inject(0, :+)
end

#Part 1:2
def max_2_sum arr
  ans = 0;
  if arr.empty?
    return 0;
  end
  
  if arr.length == 1
    return arr[0];
  end
  
  a = arr.max();
  aIndex = arr.index(a);
  arr.delete_at(aIndex);
  b = arr.max(); #next largest number
  ans = a + b;
  return ans;
end

#Part 1:3
def sum_to_n? arr, n
  if arr.empty?
    return false;
  end
  
  if arr.length == 1
    return false;
  end
  
  arr.each do |x| #forloop going through the array
    temp = arr;
    diff = n - x; #diff = difference between n and x(1st test value)
    temp.delete(x);
    if temp.include?(diff);
      return true
    end
  end
  
  return false #exit loop without finding sum  
  
end

#### Part 2
#Part 2:1
def hello(name)
  hello = "Hello, " + name;
  return hello
end

#Part 2:2
def starts_with_consonant? s
  if s.length == 0
    return false
  end

  firstLetter = s[0].upcase #set first letter to uppercase (do not worry about lowercase letters)
  if ('A'..'Z').include?(firstLetter)
    vowel = ['A', 'E', 'I', 'O', 'U'];
    if vowel.include?(firstLetter)
      return false #matches vowel array
    end
    return true #is not vowel
  end 
  
  return false #for non letters/symbols

end

#Part 2:3
def binary_multiple_of_4? s
  if s.empty?
    return false
  end 
  
  if s.scan(/\D/).empty?
    if s.to_i(2) % 4 == 0
      return true
    end
  end
  
  return false
  
end

#### Part 3
#Part 3:1
class BookInStock
  attr_accessor :isbn, :price
  
  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <=0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    format("$%.2f",@price)
  end

end