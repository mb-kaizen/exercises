# Given an input of n, the next number is defined by:
# n is even: n -> n/2
# n is odd: n -> 3n + 1
class Collatz
  attr_accessor :sequence

  def initialize
    @sequence = []
  end

  def collatz(num, output=[])
    if num == 1
      output << num
      return output
    end 

    return collatz(num/2, output << num) if num % 2 == 0
    return collatz(3*num + 1, output << num)
  end

  def longest(range)
    longest = []
    1.upto(range) do |i|
      longest << collatz(i) if collatz(i).size > longest.size
      p longest
    end
    p "-----"
    p longest
    return longest
  end

  def show
    p sequence
  end

end

first = Collatz.new
first.longest(5)


# consider making it class
# finding which sequence is longest, only hold the
# length of the previous sequence and replace if the 
# length of current is greater