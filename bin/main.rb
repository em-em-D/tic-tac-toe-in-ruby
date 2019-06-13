# class Board
#   attr_accessor :spaces
#   def initialize
#     @spaces = [1,2,3,4,5,6,7,8,9]
#   end

#   def generate_board 
#     puts "  #{@spaces[0]} | #{@spaces[1]} | #{@spaces[2]}"
#     puts " ---|---|---"
#     puts "  #{@spaces[3]} | #{@spaces[4]} | #{@spaces[5]}"
#     puts " ---|---|---"
#     puts "  #{@spaces[6]} | #{@spaces[7]} | #{@spaces[8]}"
#     puts ""
#   end

#   def add_symbol(position, symbol) 
#     @spaces[position] = symbol
#   end

#   def space_taken?(position) 
#     return @spaces[position] == "X" || @spaces[position] == "O"
#   end
#   def board_full
#     @spaces.all? { |x|
#       x.is_a? String 
#     }
#   end
  
# end

# class Player
#   attr_accessor :name, :sym 
#   def initialize(name)
#     @name = name
#   end
# end

# class Game
#   attr_accessor :player1, :player2, :turn, :board

#   @@winning_positions = [
#     [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]
#   ]

#   def initialize(player1, player2, board)
#     @player1 = player1
#     @player2 = player2
#     @board = board

#     @current_turn = 1
#     @first_turn = @player1.name
#     @winner = ""

#     play
#   end

#   def play 
#     allocate_symbols
#     take_turns
#   end

#   def allocate_symbols 
#     @player1.sym = "X"
#     @player2.sym = "O"
#   end

#   def take_turns 
#     until draw? || @winner != ""
#         (@current_turn.even?) ? turn(@player2) : turn(@player1)
#     end
#     puts "Game was a draw!" if draw? 
#   end

#   def turn(player) 
#     puts "Turn #{@current_turn}:"
#     puts "---------------------------\n\n\n"
#     @board.generate_board
#     @board.add_symbol(get_valid_position(player), player.sym)
#     announce_win(player)
#     @current_turn += 1
#   end

#   def get_valid_position(player) 
#     input = 0
#     until valid_input?(input)
#       print "#{player.name}, enter the cell number that you would like to use (1-9): "
#       input = gets.chomp.to_i
#       print "Invalid input! " unless valid_input?(input)
#       puts "Number is not in range 1-9" unless (input > 0 && input < 10)
#       puts "Cell taken." if @board.space_taken?(input - 1)
#     end
#     input - 1
#   end

#   def announce_win(player)
#     check_winner(player)
#     if @winner == player.name
#       puts "#{player.name} is the winner!"
#     end
#   end

#   def draw? 
#     (@board.board_full == true) && (@winner == "")
#   end

#   def check_winner(player) 
#     @@winning_positions.each do |triplet|
#       @winner = player.name if triplet.all? { |a| @board.spaces[a] == player.sym }
#     end
#   end

#   def valid_input?(input) 
#     return input > 0 && input < 10 && !@board.space_taken?(input - 1)
#   end
# end


# class TicTacToeRunner
#   attr_accessor :name1, :name2, :game_data

#   def initialize
#     welcome_screen
#     game_loop
#   end

#   def welcome_screen #greets players, asks for names
#     puts "|| Welcome to Tic Tac Toe! ||"
#     puts "||-------------------------||\n\n\n"
#     print "Enter Player 1's name: "
#     @name1 = gets.chomp
#     puts " "
#     print "Enter Player 2's name: "
#     @name2 = gets.chomp
#     puts " "
#   end

#   def game_loop #loops between running the game and asking if user wants to play again
#     game_start
#     play_again
#   end

#   def game_start #creates and runs a game
#     board = Board.new
#     player1, player2 = Player.new(@name1), Player.new(@name2)
#     game = Game.new(player1, player2, board)
#   end


#   def play_again #asks user if they want to play again
#     input = nil
#     until input == "Y" or input == "N"
#       puts "Would you like to play again? (Y/N): "
#       input = gets.chomp.upcase
#     end
#     case input
#     when "Y"
#       game_start
#     when "N"
#       puts "Thank you for playing!"
#     end
#   end
# end

# TicTacToeRunner.new



