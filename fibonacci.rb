def iterative_fib(num)
  sequence = [0, 1]
  return sequence[num] if num < 2

  while sequence.size <= num
    sequence << sequence[sequence.size - 1] + sequence[sequence.size - 2]
  end

  return sequence[num]
end


def recursive_fib(num)
  if num < 2
    return num
  else
    return recursive_fib(num-1) + recursive_fib(num-2)
  end
end

iterative_fib(8)
puts "-----"
recursive_fib(8)