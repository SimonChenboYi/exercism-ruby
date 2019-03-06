class Pangram
  def self.pangram?(sentence)
    chars = sentence.downcase.split('')
    (('a'..'z').to_a - chars).empty?
  end
end
