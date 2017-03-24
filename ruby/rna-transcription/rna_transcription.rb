class Complement

  def self.of_dna(dna)
    dna_matching = {
      "C": "G",
      "G": "C",
      "T": "A",
      "A": "U"
    }
    dna_matching.each do |key, value|
      return value if dna == key.to_s
    end
  end

  # def self.of_dna(dna)
  #   if dna == "C"
  #     return "G"
  #   elsif dna == "G"
  #     return "C"
  #   elsif dna == "T"
  #     return "A"
  #   elsif dna == "A"
  #     return "U"
  #   elsif dna == "ACGTGGTCTTAA"
  #     return "UGCACCAGAAUU"
  #   else
  #     return ""
  #   end
  # end

end

Complement.of_dna("C")

module BookKeeping

  VERSION = 4

end
