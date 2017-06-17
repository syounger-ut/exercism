class Sieve

  def initialize(numerator)
    @numerator = numerator.to_f
  end

  def primes
    (2..@numerator).select do |divisor|
      (2..divisor).count { |n| divisor % n == 0 } == 1
    end
  end

end

class BookKeeping

  VERSION = 1

end
