require 'pry'
class Bowling

	def score(rolls)
		@sum = 0
		first_roll = 0
		second_roll = 1
		while second_roll < rolls.length 
			roll_sum = rolls[first_roll] + rolls[second_roll]
			if rolls[first_roll] == 10
				@sum += 10 + rolls[first_roll + 2] + rolls[second_roll + 2]
			elsif roll_sum == 10
				@sum += rolls[second_roll + 1] + roll_sum
			else 
				@sum += roll_sum
			end
			first_roll += 2
			second_roll += 2
		end
		@sum
	end

end 

Bowling.new.score([6, 4, 6, 4, 6, 4, 6, 4, 6, 4, 6, 4, 6, 4, 6, 4, 6, 4, 6, 4, 6])