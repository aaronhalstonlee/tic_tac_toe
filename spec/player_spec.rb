require_relative "spec_helper.rb"
INPUT = { color: "X", name: "someone" }
module TicTacToe
    describe Player do
        context "#initialize" do

            it "raises an exception when initialized with {}" do
                expect { Player.new({}) }.to raise_error
            end

            it "does not raise an error when initialized with a valid input hash" do
                #input = { color: "X", name: "someone"}
                expect { Player.new(INPUT) }.to_not raise_error
            end
        
        end

        context "#color" do
            it "returns the color" do
                #input = { color: "X", name: "someone" }
                player = Player.new(INPUT)
                expect(player.color).to eq "X"
            end
        end

        context "#name" do
            it "returns the player's name" do
                player = Player.new(INPUT)
                expect(player.name).to eq "someone"
            end
        end
        
    end
end