require 'pry'

module RomanNumerals
  # 1990
  # 1000 = M
  # 900 = CM
  # 90 = XC

  # 2008
  # 2000=MM
  # 8=VIII

  def to_roman
    binding.pry
  end
end

Integer.include RomanNumerals
