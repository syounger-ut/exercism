object SpaceAge {
  private val EARTH_ROTATION_SECONDS = 31_557_600
  private val EARTH_ROTATION_RATIO = Map(
    "venus" -> 0.61519726,
    "mercury" -> 0.2408467,
    "mars" -> 1.8808158,
    "jupiter" -> 11.862615,
    "saturn" -> 29.447498,
    "uranus" -> 84.016846,
    "neptune" -> 164.79132
  )

  def onEarth(age: Double): Double = earthAge(1, age)

  def onVenus(age: Double): Double = earthAge(EARTH_ROTATION_RATIO("venus"), age)

  def onMercury(age: Double): Double = earthAge(EARTH_ROTATION_RATIO("mercury"), age)

  def onMars(age: Double): Double = earthAge(EARTH_ROTATION_RATIO("mars"), age)

  def onJupiter(age: Double): Double = earthAge(EARTH_ROTATION_RATIO("jupiter"), age)

  def onSaturn(age: Double): Double = earthAge(EARTH_ROTATION_RATIO("saturn"), age)

  def onUranus(age: Double): Double = earthAge(EARTH_ROTATION_RATIO("uranus"), age)

  def onNeptune(age: Double): Double = earthAge(EARTH_ROTATION_RATIO("neptune"), age)

  private def earthAge(ratio: Double, age: Double) = age / earthYearRatio(ratio)

  private def earthYearRatio(ratio: Double): Double = EARTH_ROTATION_SECONDS * ratio
}
