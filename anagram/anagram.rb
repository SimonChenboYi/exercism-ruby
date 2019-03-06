class Anagram
  attr_reader :str

  def initialize(str)
    @str = str
  end

  def match(newstrs)
    str.downcase!
    newstrs.select do |newstr|
      newstr.downcase != str && newstr.downcase.each_char.sort == str.each_char.sort
    end
  end
end
