require "./lib/board"

RSpec.describe Board do
    let (:board){Board.new}
    describe "#initialize" do
        it "initializes a board with an array spaces with the numbers 1-9" do
            expect(board.spaces).to eql([1,2,3,4,5,6,7,8,9])
        end
    end
end