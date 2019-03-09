class Scrabble
  private

  attr_accessor :input

  SCORETABLE = {
    1 => %w[A E I O U L N R S T],
    2 => %w[D G],
    3 => %w[B C M P],
    4 => %w[F H V M Y],
    5 => %w[K],
    8 => %w[J X],
    10 => %w[Q Z]
  }.freeze
  private_constant :SCORETABLE

  public

  def initialize(input)
    @input = input || ''
  end

  def score
    input.upcase.each_char.reduce(0) { |sum, current| sum + score_letter(current) }
  end

  def self.score(input)
    Scrabble.new(input).score
  end

  private

  def score_letter(letter)
    SCORETABLE.select { |_key, value| value.include?(letter) }.keys[0] || 0
  end
end
