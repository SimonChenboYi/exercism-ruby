class Series
  attr_accessor :intarr

  def initialize(intarr)
    @intarr = intarr
  end

  def slices(strlength)
    raise ArgumentError if intarr.size < strlength

    intarr.split('').each_cons(strlength).map(& :join)
  end
end
