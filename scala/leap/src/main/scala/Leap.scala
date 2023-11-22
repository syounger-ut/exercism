object Leap {
  private val COMMON_LEAP_YEAR_CADENCE = 4
  private val CENTURY_LEAP_YEAR = 100

  def leapYear(year: Int): Boolean = {
    isLeapYearCandidate(year) && !leapYearException(year)
  }

  private def isLeapYearCandidate(year: Int): Boolean = {
    year % COMMON_LEAP_YEAR_CADENCE == 0
  }

  private def leapYearException(year: Int): Boolean = {
    (year % CENTURY_LEAP_YEAR == 0) &&
      !(year % (CENTURY_LEAP_YEAR * COMMON_LEAP_YEAR_CADENCE) == 0)
  }
}
