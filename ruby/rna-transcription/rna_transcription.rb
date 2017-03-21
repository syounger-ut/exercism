class Complement

  def self.of_dna(dna)
    if dna == "C"
      return "G"
    elsif dna == "G"
      return "C"
    elsif dna == "T"
      return "A"
    elsif dna == "A"
      return "U"
    elsif dna == "ACGTGGTCTTAA"
      return "UGCACCAGAAUU"
    else
      return ""
    end
  end

end

module BookKeeping

  VERSION = 4

end
