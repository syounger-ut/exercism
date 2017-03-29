class Complement
  DNA_MATCHING = {
    "C" => "G",
    "G" => "C",
    "T" => "A",
    "A" => "U"
  }

  def self.of_dna(dna)
    dna.chars.collect { |key| DNA_MATCHING[key] or return "" }.join
  end

end

module BookKeeping

  VERSION = 4

end
