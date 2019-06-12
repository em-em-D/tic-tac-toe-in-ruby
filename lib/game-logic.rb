class GameLogic
    attr_accessor :player1, :player2 , :board , :turn 
    @@winning_combo =[ [1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
    def initialize(player1,player2,board)
        @player1 =player1
        @player2 = player2
        @board = board
        @current_turn = @player1
        @turns = 1 
        @winner = ""
    end
    def player_symbol
        @player1.sym = "X"
        @player2.sym = "O"
    end

    def next_turn
        until draw? || @winner != ""
            if @current_turn == @player1 
                @current_turn = @player2
                @turns +=1

            elsif @current_turn == @player2
                @current_turn = @player1
                @turns +=1 
            end
        end
    end

    def get_input(player)
        symbol = player.player_symbol
        puts "#{player.name}, enter the cell number that you would like to use (1-9):"
        input = gets.chomp.to_i
        puts "Invalid input. Please choose a number between 1 and 9" if !valid_input?(input)
        puts "Cell taken." if @board.space_taken?(input)
        @board.add_symbol(input,symbol)
    end

    def valid_input?(input)
        return input > 0 && input <= 9
    end



    def draw?
        (@turns == @board.spaces.length) && (@winner == "")
    end

    def check_winner?(player)

    end


end

