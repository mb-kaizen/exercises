# Given an input of n, the next number is defined by:
# n is even: n -> n/2
# n is odd: n -> 3n + 1
class Collatz

  def collatz(num, output=[])
    if num == 1
      output << num
      return output
    end 
    num % 2 == 0 ? collatz(num/2, output << num) : collatz(3*num + 1, output << num)
  end

  def longest(range)
    longest = []

    1.upto(range) do |i|
      current = []
      current << collatz(i) 
      longest = current[0] if longest.size < current[0].size 
    end

    p "#{longest[0]} produced the longest chain of collatz values with a total length of #{longest.size}!"
  end

end

first = Collatz.new
first.longest(100)