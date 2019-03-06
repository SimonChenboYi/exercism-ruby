class Transpose
    class << self
        def transpose(input)
            self.new(input).print_transpose.strip
        end
    end

    def initialize(input)
        @input = input.split("\n")
        @input.map! do |row|
            row.split('')
        end
    end

    def generate_transpose
        @transpose = Array.new

        @input.each_with_index do |row, r_index|
            row.each_with_index do |col, c_index|
                @transpose[c_index] = Array.new unless @transpose[c_index]
                @transpose[c_index][r_index] = @input[r_index][c_index]
            end
        end
    end

    def print_transpose
        generate_transpose

        output = String.new

        @transpose.each do |row|
            row.each do |col|
                col = " " if col.nil?
                output << col
            end
            output << "\n"
        end

        output
    end
end
