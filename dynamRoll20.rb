prc = 0.0
num = nil
i = 0
score = [1,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]
until prc >= 20.0
	num = score[prc]
	p = (num/6.0)	
	score[prc] = 0.0
	score[0.0] += p
	score[prc+2]+=p
	score[prc+3]+=p
	score[prc+4]+=p
	score[prc+5]+=p
	score[prc+6]+=p	
prc += 1
end


puts("Score\tEstimated Probability")
puts "0\t#{'%.05f' % (score[0])}"
until i > 5
	puts "#{i+20}\t#{'%.05f' % (score[i+20])}"
	i += 1
end
#prc_roll.each{|key,num| puts "#{key}\t#{'%.0.03f' % (num.to_f/roll_counter.to_f)}"}

