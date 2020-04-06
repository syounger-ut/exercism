import scala.util.Random

class Robot() {
  var currentName : String = ""

  def name() : String = {
    if(currentName.length == 0) { generateNewString() }

    currentName
  }

  def reset() : String = {
    generateNewString()
  }

  private

  def generateNewString() : String = {
    var first : Char = randomStringUpcase()
    var second : Char = randomStringUpcase()
    var third : Char = randomNum()
    var fourth : Char = randomNum()
    var fifth : Char = randomNum()

    currentName = s"${first}${second}${third}${fourth}${fifth}"

    currentName
  }

  def randomNum() : Char = {
    randomCharGenerator(48, 57)
  }

  def randomStringUpcase() : Char = {
    randomCharGenerator(65, 90)
  }

  def randomCharGenerator(low: Int, high: Int) : Char = {
    (Random.nextInt(high - low) + low).toChar
  }
}