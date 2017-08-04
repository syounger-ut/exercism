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

    x =  [ 0, 1 , 9 ].include?(n % 10) || n > 10 ? (n / 10.0).round.times.map { "X" } : nil

    v = [ 0, 1, 4 ].include?(n % 5) && ![9,0,1].include?(n % 10) ? "V" : nil

    i = n % 5 <= 3 ? (n % 5).times.map { "I" } : "I" unless n % 10 == 0 || n % 5 == 0

    binding.pry if n == 27

    last_digit = n.to_s.split.last.to_i

    if last_digit == 9
      [ i, x ].join
    elsif last_digit == 4
      [ i, v ].join
    else
      [x, v, i].join
    end


    # if x.count > 1
    #   # line up all x's apart from the last, which will be placed after the 'I'
    #   x.select{ |q| q != x.last } << [ i, x.last ]
    # elsif x.count == 1 && n < 10
    #   [ i, x ]
    # elsif x.count == 1 && n >= 10 && v.count == 0
    #   [ x, i ]
    # elsif n % 5 == 4 && x.count == 0
    #   [ i, v ]
    # elsif (n % 5 == 0 || n % 5 == 1)
    #   [ x, v, i]
    # end.join




    # if n % 5 == 4
    #   [ x, i, v ].join
    # elsif n % 5 == 0
    #   [ x, v ].join
    # elsif n % 5 == 1
    #   [ x, v, i ].join
    # elsif n % 10 == 9
    #   [ i, x ].join
    # elsif n % 10 == 0
    #   [ x, v ].join
    # elsif n % 10 == 1
    #   [ x, v, i ].join
    # end

  end

end
