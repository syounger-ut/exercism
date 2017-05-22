class Complement
  DNA_MATCHING = {
    "C" => "G",
    "G" => "C",
    "T" => "A",
    "A" => "U"
  }

  def self.of_dna(strand)
    strand.chars.each_with_object("") { |i, str| str << ( DNA_MATCHING[i] or return "" ) }
  end

end

module BookKeeping

  VERSION = 4

end
