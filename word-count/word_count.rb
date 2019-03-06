class Phrase
  attr_reader :str

  def initialize(str)
    @str = str
  end

  def word_count
    words.each_with_object(Hash.new(0)) { |word, hsh| hsh[word] += 1 }
  end

  private

  def words
    str.downcase.scan(/\b[a-z0-9']+\b/)
  end
end
