class Hamming
  def self.compute(stringA, stringB)
    raise ArgumentError if stringA.length != stringB.length

    stringA.each_char.with_index{ |element, index| stringA[index] != stringB[index] }
  end
end
