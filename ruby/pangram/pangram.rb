module BookKeeping
  VERSION = 4
end

class Pangram

  ALPHABET_LETTERS = 26

  def self.pangram? phrase
    ("a".."z").all? { |l| phrase.downcase.include?(l) }
  end

end
