class Board
    attr_accessor :spaces

    def initialize
      @spaces = [1,2,3,4,5,6,7,8,9]
    end

    def generate_board 
        puts "  #{@spaces[0]} | #{@spaces[1]} | #{@spaces[2]}"
        puts " ---|---|---"
        puts "  #{@spaces[3]} | #{@spaces[4]} | #{@spaces[5]}"
        puts " ---|---|---"
        puts "  #{@spaces[6]} | #{@spaces[7]} | #{@spaces[8]}"
        puts ""
    end

    def add_symbol(position, symbol) 
      @spaces[position-1] = symbol
    end

    def space_taken?(position) 
      return @spaces[position-1] == "X" || @spaces[position-1] == "O"
    end

end
test = Board.new

test.add_symbol(3,"X")
test.add_symbol()
test.generate_board

test.space_taken?(3)