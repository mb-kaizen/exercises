class Sieve
  attr_reader :primes

  def initialize(limit)
    @primes = []

    return if limit < 2

    nums = (2..limit).to_a
    while nums.size > 0
      head = nums.first
      @primes.push head
      nums = nums.select { |n| n % head != 0 }
    end
  end
  
end

module BookKeeping
  VERSION = 1
end