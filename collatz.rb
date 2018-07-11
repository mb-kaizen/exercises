# Given an input of n, the next number is defined by:
# n is even: n -> n/2
# n is odd: n -> 3n + 1
class Collatz
  
  def collatz(num)
    sequence = []
    sequence << num
    puts sequence
    return sequence if num == 1

    return collatz(num/2) if num % 2 == 0
    return collatz(3*num + 1)
  end

  def longest(range)
    longest = []

    1.upto(range) do |i|
      current = []
      current << collatz(i)
      longest = current if current.size > longest.size
    end

    puts longest[0]
  end

end

first = Collatz.new
first.collatz(5)


# consider making it class
# finding which sequence is longest, only hold the
# length of the previous sequence and replace if the 
# length of current is greater