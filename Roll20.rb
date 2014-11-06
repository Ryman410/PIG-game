count = 0
roll = nil
total = 0
until total >= 20
	count += 1
	roll = rand(6) + 1
	puts("Roll##{count}: #{roll}")
	if roll == 1
		total = 0
		break
	end
	total += roll
end
if total >= 20	
	puts("You win!")
	puts("Turn Total: #{total}")
else
	puts("You lose!")
	puts("Turn Total: #{total}")
end