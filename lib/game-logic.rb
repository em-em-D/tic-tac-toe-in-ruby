class GameLogic
    attr_accessor :player1, :player2 , :board
    @@winning_combo =[ [1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
    def initialiaze(player1,player2,board)
        @player1 =player1
        @player2 = player2
        @board = board
    end
    def player_symbol
        

    end
end