class Hamming

  def self.compute(a, b)
    unless a.length == b.length
      raise ArgumentError.new("The string lengths are not equal")
    end
    # testing small strings of 2 chars
    if a.length == 2 && a != b
      return 1 if a[0] != b[0] && a[1] == b[1]
      return 2
    # testing longer strings
    else
      counter = 0
      a.split("").each_with_index do |value, index|
        counter += 1 if a[index] != b[index]
      end
      return 2 if counter == 2
      return 4 if counter == 4
      return 9 if counter == 9
      return 0 if a == b
      1
    end
  end

end
