require "./lib/game-logic"

RSpec.describe Game do
    let (:player1){"Michael"}
    let (:player2){"Jolly"}
    let (:board){"board"}
    let (:game){Game.new(player1,player2,board)}

    describe "#allocate_symbols" do
        it "sets the symbol for player1 to X and player2 to O" do
            game.allocate_symbols
            expect(game.player1.sym).to eql("X")
            expect(game.player2.sym).to eql("O")
        end
    end


end