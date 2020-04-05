require 'pry'

class Fixnum
  ROMAN_NUMERALS = {
    '1'   => 'I',
    '5'   => 'V',
    '10'  => 'X',
    '50'  => 'L',
    '100' => 'C',
    '500' => 'D',
    '1000' => 'M'
  }

  def to_roman
    # Break the number into Thousands, Hundreds, Tens and Ones, and write down each in turn.
    n = self
    number_of_chars = n.to_s.chars.count

    case number_of_chars
    when 4
      # code fo 1000's
    when 3
      # code for 100's
    when 2
      # code for 10's
      # binding.pry
      multiple = n.digits.last
      tens = combine_numerals(multiple, 'X')
      single = singles(n.digits.first)
      [tens, single].join
    when 1
      # code for 1's
      singles(n)
    end
  end

  private

  def singles(n)
    if n == 4
      'IV'
    elsif n == 5
      'V'
    elsif n == 6
      'VI'
    elsif n == 7
      'VII'
    elsif n == 8
      'VIII'
    elsif n == 9
      'IX'
    else
      combine_numerals(n, 'I')
    end
  end

  def combine_numerals(multiple, numeral)
    multiple.times.map { |x| numeral }.join
  end

end
