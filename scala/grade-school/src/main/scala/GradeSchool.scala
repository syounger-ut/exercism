class School {
  type DB = Map[Int, Seq[String]]
  private var database: DB = Map()

  def add(name: String, g: Int) = {
    val grade = database.get(g) match {
      case Some(gradeNames) => gradeNames :+ name
      case None => Seq(name)
    }

    database = database + (g -> grade)
  }

  def db: DB = database

  def grade(g: Int): Seq[String] = db.get(g) match {
    case Some(names) => names
    case None => Seq()
  }

  def sorted: DB = db.toList.map((item) => (item._1, item._2.sorted)).sortBy(_._1).toMap
}
