module BookKeeping
  VERSION = 3
end

class Squares

  def initialize(number)
    @numbers = numbers_array(number)
  end

  def square_of_sum
    @numbers.inject(:+) ** 2 rescue 0
  end

  def sum_of_squares
    @numbers.map { |n| n ** 2 }.inject(:+) rescue 0
  end

  def difference
    square_of_sum - sum_of_squares rescue 0
  end

  def numbers_array(number)
    number.times.map { |n| n + 1 }
  end

end
