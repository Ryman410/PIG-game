roll = nil
prc = 0
total = 0
total_roll = {'0'=>0,'100'=>0,'101'=>0,'102'=>0,'103'=>0,'104'=>0,'105'=>0}
print("Hold-at-100 turn simulations? ")
roll_counter = gets.chomp
roll_counter = roll_counter.to_i
until prc >= roll_counter
	total = 0
	until total >= 100
		roll = rand(6) + 1
		if roll == 1
			total = 0
			break
		end
		total += roll
	end
if total == 0
	total_roll['0'] += 1
elsif total == 100
	total_roll['100'] += 1
elsif total == 101
	total_roll['101'] += 1
elsif total == 102
	total_roll['102'] += 1
elsif total == 103
	total_roll['103'] += 1
elsif total == 104
	total_roll['104'] += 1
elsif total == 105
	total_roll['105'] += 1
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

total_roll.each{|key,num| puts "#{key}\t#{'%.09f' % (num.to_f/roll_counter.to_f)}"}


