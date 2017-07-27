require 'pry'

class Fixnum

  # M = 1000
  # L = "blah"
  # C = "blah"
  # D = "blah"

  def to_roman

    n = self

    numerals = {
      i: 1,
      v: 5,
      x: 10
    }

    divisors = numerals.select { |x, y| n % y == 0 }.values

    i = n % 5 <= 3 ? (n % 5).times.map { |x| "I" }.join : "I"

    v = [1,4,5].include?(n%5)

    binding.pry

  end

end

4.to_roman
