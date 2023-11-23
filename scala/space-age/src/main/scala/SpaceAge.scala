object SpaceAge {
  private val EARTH_ROTATION_SECONDS = 31_557_600
  def onEarth(age: Double): Double = earthAge(1, age)

  private val VENUS_EARTH_ROTATION_RATIO = 0.61519726
  def onVenus(age: Double): Double = earthAge(VENUS_EARTH_ROTATION_RATIO, age)

  private val MERCURY_EARTH_ROTATION_RATIO = 0.2408467
  def onMercury(age: Double): Double = earthAge(MERCURY_EARTH_ROTATION_RATIO, age)

  private val MARS_EARTH_ROTATION_RATIO = 1.8808158
  def onMars(age: Double): Double = earthAge(MARS_EARTH_ROTATION_RATIO, age)

  private val JUPITER_EARTH_ROTATION_RATIO = 11.862615
  def onJupiter(age: Double): Double = earthAge(JUPITER_EARTH_ROTATION_RATIO, age)

  private val SATURN_EARTH_ROTATION_RATIO = 29.447498
  def onSaturn(age: Double): Double = earthAge(SATURN_EARTH_ROTATION_RATIO, age)

  private val URANUS_EARTH_ROTATION_RATIO = 84.016846
  def onUranus(age: Double): Double = earthAge(URANUS_EARTH_ROTATION_RATIO, age)

  private val NEPTUNE_EARTH_ROTATION_RATIO = 164.79132
  def onNeptune(age: Double): Double = earthAge(NEPTUNE_EARTH_ROTATION_RATIO, age)

  private def earthAge(ratio: Double, age: Double) = age / earthYearRatio(ratio)

  private def earthYearRatio(ratio: Double): Double = EARTH_ROTATION_SECONDS * ratio
}
