class Acronym
  def self.abbreviate(str)
    initials = str.scan(/\b\w/)
    initials.join('').upcase
  end
end
