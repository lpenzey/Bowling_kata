require 'bowling'

RSpec.describe Bowling do 
	let(:game) { Bowling.new }

	describe "#score" do 
		it "returns 0 if all rolls are 0" do
			rolls = Array.new(20, 0)
			expect(game.score(rolls)).to eq 0
		end
		
		it "returns 20 if all rolls are 1" do
			rolls = Array.new(20, 1)
			expect(game.score(rolls)).to eq 20
		end

		it "returns 26 when bowler rolls 5, 5, 7, 2" do
			rolls = [5, 5, 7, 2]
			expect(game.score(rolls)).to eq 26
		end

		it "returns 43 when bowler rolls 5, 5, 3, 2, 6, 4, 7, 1" do
			rolls = [5, 5, 3, 2, 6, 4, 7, 1]
			expect(game.score(rolls)).to eq 43
		end

		it "returns 160 when bowler rolls 6, 4 spares the entire game" do
			rolls = [6, 4, 6, 4, 6, 4, 6, 4, 6, 4, 6, 4, 6, 4, 6, 4, 6, 4, 6, 4, 6]
			expect(game.score(rolls)).to eq 160
		end

		it "returns 31 when bowler rolls 10, 0, 5, 3, 2, 3" do
			rolls = [10, 0, 5, 3, 2, 3] 
			expect(game.score(rolls)).to eq 31
		end

		it "returns 51 when bowler rolls 10, 0, 10, 0, 5, 3" do
			rolls = [10, 0, 10, 0, 5, 3] 
			expect(game.score(rolls)).to eq 51
		end

		xit "returns 300 is all rolls are strikes" do
			rolls = [10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 10, 10]
			expect(game.score(rolls)).to eq 300
		end


	end

end 
