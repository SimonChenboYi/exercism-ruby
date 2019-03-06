class SpaceAge
  def initialize(secs)
    @secs = secs
  end

  def on_earth
    (@secs.to_f / 31_557_600).round(2)
  end

  def on_mercury
    (@secs.to_f / 31_557_600 / 0.2408467).round(2)
  end

  def on_venus
    (@secs.to_f / 31_557_600 / 0.61519726).round(2)
  end

  def on_mars
    (@secs.to_f / 31_557_600 / 1.8808158).round(2)
  end

  def on_jupiter
    (@secs.to_f / 31_557_600 / 11.862615).round(2)
  end

  def on_saturn
    (@secs.to_f / 31_557_600 / 29.447498).round(2)
  end

  def on_uranus
    (@secs.to_f / 31_557_600 / 84.016846).round(2)
  end

  def on_neptune
    (@secs.to_f / 31_557_600 / 164.79132).round(2)
  end
end
