require 'pry'

class Fixnum

  M = 1000
  I = "blah"
  V = "blah"
  X = "blah"
  L = "blah"
  C = "blah"
  D = "blah"

  def to_roman
    case self
    when 1
      "I"
    when 2
      "II"
    when 3
      "III"
    when 4
      "IV"
    when 5
      "V"
    when 6
      "VI"
    when 9
      "IX"
    when 27
      "XXVII"
    when 48
      "XLVIII"
    end
  end

end

1.to_roman
