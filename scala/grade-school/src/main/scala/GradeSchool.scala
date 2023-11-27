class School {
  type DB = Map[Int, Seq[String]]
  private var database: DB = Map()

  def add(name: String, g: Int): DB = {
    val studentNames = {
      if (!db.contains(g)) Seq()
      else db(g)
    }

    database = db + (g -> (studentNames :+ name))
    database
  }

  def db: DB = {
    if (database.isEmpty) createDatabase()
    database
  }

  def grade(g: Int): Seq[String] = {
    if (!db.contains(g)) Seq()
    else db(g)
  }

  def sorted: DB = {
    val sortedKeys = db.keys.toList.sorted
    val sortedValues = sortedKeys.map(key => db(key).sorted)
    val sortedDB = (sortedKeys zip sortedValues).toMap
    sortedDB
  }

  private def createDatabase(): DB = {
    database = Map()
    database
  }
}
