class Affine
  @error_messeage = 'Error: a and m must be coprime.'

  def initialize(inputa, inputb)
    @a = inputa
    @b = inputb
    raise ArgumentError.new(@error_messeage) unless @a.gcd(26) == 1
  end

  def encode(plaintext)
    plaintext.gsub!(/[^0-9A-Za-z]/, '')
    chars = plaintext.downcase.split('')
    charencode(chars).map(&:chr).each_slice(5).map(&:join).join(' ')
  end

  def decode(ciphertext)
    chars = ciphertext.delete(' ').downcase.split('')
    chardecode(chars).map(&:chr).join('')
  end

  private

  def charencode(chars)
    chars.map do |char|
      if char.ord.between?('0'.ord, '9'.ord)
        char
      else
        ((@a * (char.ord - 'a'.ord) + @b) % 26) + 'a'.ord
      end
    end
  end

  def mmi
    (1..26).each { |i| break i if @a * i % 26 == 1 }
  end

  def chardecode(chars)
    chars.map do |char|
      if char.ord.between?('0'.ord, '9'.ord)
        char
      else
        ((mmi * (char.ord - 'a'.ord - @b)) % 26) + 'a'.ord
      end
    end
  end
end
