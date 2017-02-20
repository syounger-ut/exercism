class Hamming

  def self.compute(a, b)

    if a.length == b.length

      return 1 if a[0] != b[0] && a.length == 1 && b.length == 1

      counter = 0
      mismatch_found = 0

      a.split("").each do |i|

        if i != b[counter] && mismatch_found < 1
          mismatch_found += 1
          # puts "Mismatch Found: #{mismatch_found}"
          1
        elsif i != b[counter] && mismatch_found < 2
          mismatch_found += 1
          # puts "Mismatch Found: #{mismatch_found}"
          2
        else
          mismatch_found += 1
          # puts "Mismatch Found: #{mismatch_found}"
          0
        end

        counter += 1
        # puts "Counter: #{counter}"

      end
    end
  end
end

# Hamming.compute("AG", "CT")