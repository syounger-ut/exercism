import scala.annotation.tailrec

object Bob {
  private type Reaction = (Boolean, String)
  private val reactions =
    Array[String => Reaction](
      loudQuestion,
      question,
      shout,
      noQuestion,
      defaultResponse
    )

  @tailrec
  def response(statement: String, question: Int = 0): String = {
    val reaction = reactions(question)(statement.trim)
    if (reaction._1) {
      return reaction._2
    }

    response(statement, question + 1)
  }

  private def loudQuestion(statement: String): Reaction =
    (
      shout(statement)._1 && question(statement)._1,
      "Calm down, I know what I'm doing!"
    )

  private def noQuestion(statement: String): Reaction =
    (statement.isEmpty, "Fine. Be that way!")

  private def question(statement: String): Reaction =
    (statement.endsWith("?"), "Sure.")

  private def shout(statement: String): Reaction =
    (
      hasLetters(statement) && statement.toUpperCase == statement,
      "Whoa, chill out!"
    )

  private def hasLetters(statement: String): Boolean =
    statement.exists(_.isLetter)

  private def defaultResponse(statement: String): Reaction =
    (true, "Whatever.")
}
