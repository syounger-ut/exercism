require 'pry'

class Fixnum

  # M = 1000
  # L = "blah"
  # C = "blah"
  # D = "blah"

  def to_roman

    n = self

    # numerals = {
    #   i: 1,
    #   v: 5,
    #   x: 10
    # }

    i = n % 5 <= 3 ? (n % 5).times.map { "I" }.join : "I"

    v = [0, 1, 4].include?(n % 5) && ![9,0,1].include?(n % 10) ? "V" : nil

    x =  [0,1,9].include?(n % 10) ? (n / 10.0).round.times.map { "X" }.join : nil

    # binding.pry

    if n % 5 == 4
      [ x, i, v ].join
    elsif [0,1,9].include?(n % 10)
      [ i, x ].join
    else
      [ x, v, i].join
    end

  end

end
