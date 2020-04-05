class Palindromes
  def initialize(max_factor: 0, min_factor: 0)
    @max_factor = max_factor
    @min_factor = min_factor
  end

  def generate
    range = (min_factor..max_factor).to_a

    @products = range.map do |first_num|
                  range.map do |second_num|
                    product = (first_num * second_num).to_s
                    next unless product == product.reverse

                    product.to_i
                  end
                end.flatten.compact
  end

  def largest
    Largest.new(products.max, min_factor, max_factor)
  end

  private

  attr_reader :products, :min_factor, :max_factor

  class Largest
    attr_reader :value

    def initialize(value, min_factor, max_factor)
      @value = value
      @min_factor = min_factor
      @max_factor = max_factor
    end

    def factors
      range = (@min_factor..@max_factor).to_a

      range.map do |first_num|
        range.map do |second_num|
          product = first_num * second_num

          next unless product == value

          [first_num, second_num]
        end
      end.flatten(1).compact.map(&:sort)
    end
  end
end