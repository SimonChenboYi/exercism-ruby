class Raindrops
  def self.convert(number)
    raindrops = ''
    raindrops << 'Pling' if (number % 3).zero?
    raindrops << 'Plang' if (number % 5).zero?
    raindrops << 'Plong' if (number % 7).zero?
    raindrops.empty? ? number.to_s : raindrops
  end
end
