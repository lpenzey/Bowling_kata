require 'pry'
class Bowling

	def score(rolls)
		@sum = 0
		first_roll = 0
		second_roll = first_roll + 1
		while rolls[first_roll] do
			break if rolls[second_roll + 1].nil?
			if rolls[first_roll..second_roll].sum == 10
				@sum += rolls[second_roll + 1]
			end
			first_roll += 1
			second_roll += 1
		end
		@sum += rolls.sum
	end

end 

Bowling.new.score([6, 4, 6, 4, 6, 4, 6, 4, 6, 4, 6, 4, 6, 4, 6, 4, 6, 4, 6, 4, 6])