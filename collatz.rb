# Given an input of n, the next number is defined by:
# n is even: n -> n/2
# n is odd: n -> 3n + 1

def collatz(n)
  arr = []
  arr << n
  p arr
  return arr if n <= 1

  return collatz(n/2) if n % 2 == 0
  return collatz(3*n + 1)
end

collatz(7)