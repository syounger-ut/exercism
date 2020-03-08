class Hexadecimal
  def initialize(hex)
    @hex = hex
  end

  def to_decimal
    hex_pattern = /^[[:xdigit:]]+$/

    return 0 unless hex_pattern === @hex

    @hex.to_i(16)
  end
end