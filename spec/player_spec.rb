require "./lib/player"

RSpec.describe Player do
    describe "#initialize" do
        player = Player.new("Michael")

        it "initializes a player with the name passed as argument" do
            expect(player.name).to eql("Michael")
        end
    end
end
