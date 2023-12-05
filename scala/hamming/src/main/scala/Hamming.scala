import scala.annotation.tailrec

object Hamming {
  @tailrec
  def distance(dnaStrandOne: String,
               dnaStrandTwo: String,
               distance: Int = 0): Option[Int] = {
    if (dnaStrandOne.length != dnaStrandTwo.length) {
      return None
    }

    if (dnaStrandOne.isEmpty) {
      return Some(distance)
    }
    val diffCount = if (dnaStrandOne.head == dnaStrandTwo.head) 0 else 1

    Hamming.distance(dnaStrandOne.tail, dnaStrandTwo.tail, distance + diffCount)
  }
}
