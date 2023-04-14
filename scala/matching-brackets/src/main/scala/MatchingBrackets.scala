import scala.annotation.tailrec
import scala.util.matching.Regex
import scala.collection.mutable.ListBuffer


object MatchingBrackets {
  def isPaired(brackets : String) : Boolean = {
    // Early return when an empty string
    if (brackets.isEmpty) return true

    val chars = brackets
      .filterNot(_.isWhitespace) // Remove white space
      .toList

    def matchPair(startChar: Char, endChar: Char): Boolean = {
      startChar match {
        case '[' => endChar == ']'
        case '{' => endChar == '}'
        case _ => false
      }
    }

    @tailrec
    def matchPairs(n: Int = 0, aggregator: Boolean = true): Boolean = {
      if (!aggregator || n > (chars.length / 2) - 1) aggregator
      else matchPairs(n + 1, matchPair(chars(n), chars(chars.length - 1 - n)))
    }

    matchPairs()
  }
}
