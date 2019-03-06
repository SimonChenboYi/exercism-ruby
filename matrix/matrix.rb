class Matrix
  private

  attr_accessor :strmatrix

  public

  def initialize(strmatrix)
    @strmatrix = strmatrix
  end

  def rows
    strmatrix.split("\n").map { |row| row.split.map(&:to_i) }
  end

  def columns
    # self.rows.transpose
    arr = rows
    colnum = arr.map(&:length).max
    transpose = Array.new(colnum) { Array.new(arr.length) }
    (0...arr.length).each do |i|
      (0...colnum).each { |j| transpose[j][i] = arr[i][j] }
    end
    transpose
  end
end
