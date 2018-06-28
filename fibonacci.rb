def iterative_fib(num)
  return num if num < 2
  sequence = [0, 1]

  while sequence.size <= num
    sequence << sequence[sequence.size - 1] + sequence[sequence.size - 2]
  end

  return sequence[num]
end


def recursive_fib(num)
    return num if num < 2
    return recursive_fib(num-1) + recursive_fib(num-2)
end


require 'benchmark'
num = 100
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib") { iterative_fib(num) }
end