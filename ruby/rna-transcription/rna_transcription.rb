class Complement

  def self.of_dna(dna)
    dna_matching = {
      "C": "G",
      "G": "C",
      "T": "A",
      "A": "U"
    }

    dna.chars.collect do |key|
      dna_matching[key.to_sym] || (return "")
    end.join("")

  end
end

module BookKeeping

  VERSION = 4

end
