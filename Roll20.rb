roll = nil
prc = 0
total = 0
score = {'0'=>1.0,'20'=>0.0,'21'=>0.0,'22'=>0.0,'23'=>0.0,'24'=>0.0,'25'=>0.0}
print("Hold-at-20 turn simulations? ")
roll_counter = gets.chomp
roll_counter = roll_counter.to_i
until prc >= roll_counter
	total = 0
	until total >= 20
		roll = rand(6) + 1
		if roll == 1
			total = 0
			break
		end
		total += roll
	end
if total == 0
	score['0'] += 1
elsif total == 20
	score['20'] += 1
elsif total == 21
	score['21'] += 1
elsif total == 22
	score['22'] += 1
elsif total == 23
	score['23'] += 1
elsif total == 24
	score['24'] += 1
elsif total == 25
	score['25'] += 1
end
prc += 1
end

=begin puts total_roll['0']
puts total_roll['20']
puts total_roll['21']
puts total_roll['22']
puts total_roll['23']
puts total_roll['24']
puts total_roll['25']
=end


puts("Score\tEstimated Probability")

score.each{|key,num| puts "#{key}\t#{'%.03f' % (num.to_f/roll_counter.to_f)}"}


