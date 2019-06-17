require "./lib/board.rb"

Rspec.describe Board do
    let(:board){Board.new}
    describe "#initialize" do
        it "it initializes an array of numbers" do
            expect(board.spaces).to eql([1,2,3,4,5,6,7,8,9])
        end
    end
end
