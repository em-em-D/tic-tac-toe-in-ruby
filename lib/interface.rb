module Interface
    def intructions
        puts "Tic-Tac-Toe is a game where two players take turns marking the spaces in a (3 X 3) grid "
        puts "Each player has an option to fill each space with either X or O "
        puts "The player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row wins the game"
        puts "Let Games Begin !!!"

        
    def display(board)
        puts "  #{board[0] }  |  #{board[1]}    | #{board[2]} "
        puts "                |                 |             "
        puts "----------------+-----------------+--------------"
        puts "                |                 |               "
        puts " #{board[3] }   |  #{board[4] }   |  #{board[5] } "
        puts "----------------+-----------------+---------------"
        puts " #{board[6] }   |  #{board[7]}    |  #{board[8] }  "
        puts "                |                 |                "
    end

    def player_instructions
    end
end
