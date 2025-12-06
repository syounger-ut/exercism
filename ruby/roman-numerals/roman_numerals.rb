require 'pry'

class Integer
  ROMAN_NUMERALS = {
    '1000' => 'M',
    '500' => 'D',
    '100' => 'C',
    '50'  => 'L',
    '10'  => 'X',
    '5'   => 'V',
    '1'   => 'I'
  }

  def to_roman
    # How many do each of the roman numberals divide into the number
    ROMAN_NUMERALS.map do |key, value|
      divides = self / key.to_i
      next if divides == 0

      # if a single digit, need to use modulo
      next 10 - (self % 10) if key == "I"
      value
    end.join
  end
end
