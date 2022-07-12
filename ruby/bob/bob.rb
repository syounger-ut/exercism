require 'pry'

class Bob
  def self.hey(remark)
    str = new(remark.strip)

    question = str.question?
    shout = str.shout?
    silence = str.silence?

    if shout && !question
      "Whoa, chill out!"
    elsif question && !shout
      "Sure."
    elsif question && shout
      "Calm down, I know what I'm doing!"
    elsif silence
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end

  def initialize(remark)
    @remark = remark
    @last_char = remark.chars.last
  end

  def question?
    last_char == "?"
  end

  def shout?
    letters_only = remark.chars.select { |char| char.match(/[a-zA-Z]/) }
    return false unless letters?

    letters_only.all? { |char| char.match(/[A-Z]/) }
  end

  def letters?
    letters_only = remark.chars.select { |char| char.match(/[a-zA-Z]/) }
    letters_only.length > 0
  end

  def silence?
    remark == ""
  end

  private

  attr_reader :remark, :last_char

  def all_capital_letters
    letters_only = remark.chars.select { |char| char.match(/[A-z]/) }
    all_caps = letters_only.all? { |char| char.match(/[A-Z]/) }
  end
end
