require 'bowling'

RSpec.describe Bowling do 
	describe "#score" do 
		it "returns 0 if all rolls are 0" do
			rolls = Array.new(20, 0)
			game = Bowling.new
			expect(game.score(rolls)).to eq 0
		end
		it "returns 20 if all rolls are 1" do
			rolls = Array.new(20, 1)
			game = Bowling.new
			expect(game.score(rolls)).to eq 20
		end

	end

end 
