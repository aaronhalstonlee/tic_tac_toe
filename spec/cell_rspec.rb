require_relative "spec_helper.rb"

module TicTacToe
    describe Cell do 
        #tests
        context '#intialize' do
            it "is initialized with a value of '' by default" do
                cell = Cell.new
                expect(cell.value).to eq ''
            end
            it "can be instantiated with a value of 'X'" do
                cell = Cell.new("X")
                expect(cell.value).to eq 'X'
            end
        end
    end
end