class Complement

  def self.of_dna(dna)
    dna_matching = {
      "C": "G",
      "G": "C",
      "T": "A",
      "A": "U"
    }

    dna_array = dna.split("")
    rna_compliment = []

    dna_array.each do |strand|
      dna_matching.select { |key, value| rna_compliment << value if key.to_s == strand  }
    end

    if rna_compliment.size < dna.length
      return ""
    else
      return rna_compliment.join("")
    end
    
  end
end

Complement.of_dna("ACGTXXXCTTAA")

module BookKeeping

  VERSION = 4

end
