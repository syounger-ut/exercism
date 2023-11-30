object Bob {
  def response(statement: String): String = {
    val trimmedStatement = statement.trim

    if (trimmedStatement.isEmpty) {
      return "Fine. Be that way!"
    }

    if (shout(trimmedStatement) && question(trimmedStatement)) {
      return "Calm down, I know what I'm doing!"
    }

    if (shout(trimmedStatement)) {
      return "Whoa, chill out!"
    }

    if (question(trimmedStatement)) {
      return "Sure."
    }

    "Whatever."
  }

  private def question(statement: String): Boolean = statement.endsWith("?")

  private def shout(statement: String): Boolean =
    hasLetters(statement) && statement.toUpperCase == statement

  private def hasLetters(statement: String): Boolean =
    statement.exists(_.isLetter)
}
