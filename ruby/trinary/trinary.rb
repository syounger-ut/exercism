class Trinary

  def initialize(number)
    @number = number
  end

  def to_decimal
    return 0 unless @number.scan(/[0-2]/).length == @number.length

    digits = @number.each_char.map(&:to_i).reverse

    digits.map.each_with_index do |num, index|
      num * (3 ** index)
    end.reverse.sum
  end
end