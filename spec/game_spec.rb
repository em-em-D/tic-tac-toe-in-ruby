require "./lib/game-logic"

RSpec.describe Game do
  describe '#valid_input?' do
    it 'Tests if input is valid' do
      player1 = double("Player")
      player2 = double("Player")
      board = double("Board")
      allow(player1).to receive(:sym) { 'X'}
      allow(player2).to receive(:sym) { 'O'}  
      allow(board).to receive(:space_taken?){false} 
      game = Game.new(player1, player2, board) 
      expect(game.valid_input?(1)).to eql(true)
    end
  end
end

# RSpec.describe Game do
#     let(:player1){Player.new("Bright")}
#     let(:player2){Player.new("Sumaer")}
#     let(:board){Board.new}
#     let(:game){Game.new(player1,player2,board)}
#     describe '#check_winner' do
#         context 'when the first row matches' do
#             before do 
#                 player1.sym = "X"
#                 allow(board).to receive(:board).and_return(["X","X","X",4,5,6,7,8,9])
#             end
#             it 'Tests if input is valid' do
#             expect(game.check_winner(player1)).to eql(false)
#             end
#         end
#     end
# end