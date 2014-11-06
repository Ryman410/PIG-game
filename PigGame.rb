count = 0
roll = nil
roundTotal = 0
score1 = 0
score2 = 0
answer = ""


until score1 >= 100 or score2 >= 100
	count = 0
	roundTotal = 0
	puts("Player 1's Turn")
	until roundTotal >= 20
		count += 1
		roll = rand(6) + 1
		puts("Roll##{count}: #{roll}")
		if roll == 1
			roundTotal = 0
			break
		end
		if roundTotal >= 20
			break
		end
		roundTotal += roll
	end
	score1 += roundTotal
	puts("Player 1's Score: #{score1}")
	puts("Player 2's Score: #{score2}")
	if score1 > 99
		puts("YOU LOSE!")
		break
	end
	if score2 > 99
		puts("YOU WIN!")
		break
	end
	count = 0
	roll = 0
	roundTotal = 0
	puts("Player 2's Turn")
	until answer != ""
		count += 1
		roll = rand(6) + 1
		if roll == 1
			roundTotal = 0
			break
		end
		puts("Roll##{count}: #{roll}")
		roundTotal += roll
		puts("Turn Total: #{roundTotal} Enter to Roll. Enter anything else to hold.")
		answer = gets.chomp
	end
	answer = ""
	score2 += roundTotal
	puts("Player 1's Score: #{score1}")
	puts("Player 2's Score: #{score2}")
	if score1 > 99
		puts("YOU LOSE!")
		break
	end
	if score2 > 99
		puts("YOU WIN!")
		break
	end
end
puts("Player 1's Score: #{score1}")
puts("Player 2's Score: #{score2}")