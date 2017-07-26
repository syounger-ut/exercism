require 'pry'

class Fixnum

  M = 1000
  L = "blah"
  C = "blah"
  D = "blah"

  def to_roman

    n = self.to_f

    x = n % 10
    v = n % 5
    i = n % 1
binding.pry
    if x == 0
      "X"
    elsif v == 0
      "V"
    elsif i > 3
      "IV"
    else
      n.to_i.times.map{ |num| "I" }.join
    end

  end

end
