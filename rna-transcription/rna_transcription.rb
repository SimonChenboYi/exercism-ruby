class Complement
  def self.of_dna(arr)
    return '' if arr == ''

    chars = arr.split('')
    chars.map! do |char|
      case char
      when 'G' then 'C'
      when 'C' then 'G'
      when 'T' then 'A'
      when 'A' then 'U'
      end
    end.join('')
  end
end
