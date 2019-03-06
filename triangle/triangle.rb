class Triangle
  attr_accessor :lengthsarr

  def initialize(lengthsarr)
    @lengthsarr = lengthsarr
  end

  def equilateral?
    return false if validtriangle? == false

    compare == 1
  end

  def isosceles?
    return false if validtriangle? == false

    compare <= 2
  end

  def scalene?
    return false if validtriangle? == false

    compare == 3
  end

  private

  def compare
    lengthsarr.dup.uniq.length
  end

  def validtriangle?
    sorted = lengthsarr.dup.sort!
    sorted[0] > 0 && sorted[0] + sorted[1] > sorted[2]
  end
end
