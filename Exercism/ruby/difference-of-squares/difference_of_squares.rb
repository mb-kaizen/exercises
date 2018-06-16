class Squares

  def initialize(num)
    @num = num
  end

  def square_of_sum
    (0..@num).inject(:+)**2
  end

  def sum_of_squares
    (0..@num).inject { |sum, sq| sum + sq**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end

end

module BookKeeping
  VERSION = 4
end