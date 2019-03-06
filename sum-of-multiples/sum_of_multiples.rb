class SumOfMultiples
  attr_accessor :inputnum

  def initialize(*inputnum)
    @inputnum = inputnum
  end

  def to(tonum)
    slt = []
    inputnum.each do |n|
      (1...tonum).map { |x| slt << x unless x % n != 0 || slt.include?(x) }
    end
    slt.empty? ? 0 : slt.reduce(:+)
  end
end
