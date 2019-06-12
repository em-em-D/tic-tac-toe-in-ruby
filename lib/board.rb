require_relative '../lib/interface.rb'
class Board
    include Interface 
    attr_accessor :board

    def initialize
        @board = [1,2,3,4,5,6,7,8,9]
        @winning_combinations = [ [1,2,3], [4,5,6] , [7,8,9] , [1,4,7] , [2,5,8] , [3,6,9] , [1,5,9] , [3,5,7] ]     

    end

    def update(position,character)
        if @board[position-1] == "X" || @board[position-1] == "O"
            puts "This position is taken. Please choose another position"
        end   
        @board[position-1] = character
    end

    def full?
        @board.all? String
    end

    def winner?
    

    end
    
end


feild = Board.new
feild.welcome

