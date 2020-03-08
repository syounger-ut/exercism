class Binary
  def self.to_decimal(binary_digits)
    raise ArgumentError if binary_digits.scan(/[0-1]/).length != binary_digits.length

    numbers = binary_digits.each_char.map(&:to_i).reverse

    numbers.map.each_with_index do |digit, index|
      digit * (2**index)
    end.reverse.sum
  end
end