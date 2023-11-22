import scala.annotation.tailrec

object MatchingBrackets {
  val open_chars: Array[Char] = Array('[', '{', '(')
  val close_chars: Array[Char] = Array(']', '}', ')')

  def isPaired(brackets: String, stack: List[Char] = List()): Boolean = {
    // What if the brackets is empty?
    if (brackets.isEmpty) {
      stack.isEmpty
    // What if the brackets has characters?
    } else {
      bracket_has_characters(brackets, stack)
    }
  }

  private def bracket_has_characters(brackets: String, stack: List[Char]): Boolean = {
    // Get the first character
    val bracket = brackets.head
    // Check of the character is an open character
    if (open_chars.contains(bracket)) {
      // Add the character to the stack
      isPaired(brackets.tail, bracket :: stack)
    } else {
      not_open_character(bracket, brackets, stack)
    }
  }

  private def not_open_character(bracket: Char, brackets: String, stack: List[Char]): Boolean = {
    // Check if the character is a close character
    if (close_chars.contains(bracket)) {
      closing_character(bracket, brackets, stack)
    } else {
      // If the character is not an open character, we ignore it
      isPaired(brackets.tail, stack)
    }
  }

  private def closing_character(bracket: Char, brackets: String, stack: List[Char]): Boolean = {
    // Check if the stack is empty
    if (stack.isEmpty) {
      false
    } else {
      // Get the index of the closing character
      val current_close_char_index = close_chars.indexOf(bracket)
      // Get the character at position n
      val matchedOpenChar = open_chars(current_close_char_index)
      if (matchedOpenChar == stack.head) {
        // Remove the last character from the stack
        isPaired(brackets.tail, stack.tail)
      } else {
        false
      }
    }
  }
}