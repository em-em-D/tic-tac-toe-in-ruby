require "./lib/game-logic"

RSpec.describe Game do
  describe '#valid_input?' do
    it 'Tests if input is valid' do
      player1 = double("Player")
      player2 = double("Player")
      board = double("Board")
      allow(board).to receive(:space_taken?){false} 
      game = Game.new(player1, player2, board) 
      expect(game.valid_input?(1)).to eql(true)
    end
  end
end