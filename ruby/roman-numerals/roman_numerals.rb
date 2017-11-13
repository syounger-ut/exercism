require 'pry'

class Fixnum
  ROMAN_NUMERALS = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  def to_roman
    n = self.to_f

    v = "V" if (n / 5).round.odd? && n >= 5 && n % 10 != 0
    i = singles(n)
    # binding.pry
    numeral = [ v, i ]

    numeral.join("")

  end

  private

  def singles(n)
    case n % 5
    when 4
      "IV"
    when 3,2,1
      (n % 5).to_i.times.map { |num| "I" }.join("")
    end
  end

end
