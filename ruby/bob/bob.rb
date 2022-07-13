class SharedRemark
  def initialize(remark)
    @remark = remark
    @last_char = remark.chars.last
  end

  private

  attr_reader :remark, :last_char

  def question?
    last_char == "?"
  end

  def letters?
    letters_only = remark.chars.select { |char| char.match(/[a-zA-Z]/) }
    letters_only.length > 0
  end

  def shout?
    letters_only = remark.chars.select { |char| char.match(/[a-zA-Z]/) }
    return false unless letters?

    letters_only.all? { |char| char.match(/[A-Z]/) }
  end

  def all_capital_letters?
    letters_only = remark.chars.select { |char| char.match(/[A-z]/) }
    all_caps = letters_only.all? { |char| char.match(/[A-Z]/) }
  end

  def silence?
    remark == ""
  end
end

class Shout < SharedRemark
  def valid?
    shout? && !question?
  end

  def text
    "Whoa, chill out!"
  end
end

class Question < SharedRemark
  def valid?
    question? && !shout?
  end

  def text
    "Sure."
  end
end

class QuestionShouted < SharedRemark
  def valid?
    question? && shout?
  end

  def text
    "Calm down, I know what I'm doing!"
  end
end

class Silence < SharedRemark
  def valid?
    silence?
  end

  def text
    "Fine. Be that way!"
  end
end

class Bob
  def self.hey(remark)
    stripped_remark = remark.strip

    stg = [
      Shout.new(stripped_remark),
      Question.new(stripped_remark),
      QuestionShouted.new(stripped_remark),
      Silence.new(stripped_remark),
    ].detect(&:valid?)
    return stg.text if stg

    "Whatever."
  end
end
