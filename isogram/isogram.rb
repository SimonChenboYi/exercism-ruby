class Isogram
  def self.isogram?(input)
    inputchars = input.downcase.scan(/[a-z]/)
    inputchars.size == inputchars.uniq.size
  end
end
