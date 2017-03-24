class Complement

  def self.of_dna(dna)
    dna_matching = {
      "C": "G",
      "G": "C",
      "T": "A",
      "A": "U"
    }

    rna_compliment = []

    matches = dna.chars.select do |item|
      dna_matching[item.to_sym] ? rna_compliment << dna_matching[item.to_sym] : nil
    end

    return "" if matches.size < dna.length

    rna_compliment.join("")

  end
end


module BookKeeping

  VERSION = 4

end
